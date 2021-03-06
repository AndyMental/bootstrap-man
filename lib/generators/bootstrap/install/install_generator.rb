require 'rails/generators'
module Bootstrap
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)
      desc "This adds Bootstrap to Assets and Application Layout"

      attr_reader :app_name

      def setup
        # Adding Assets
        js_manifest = 'app/assets/javascripts/application.js'

        if File.exist?(js_manifest)
          insert_into_file js_manifest, "//= require jquery3\n//= require popper\n//= require bootstrap-sprockets\n", :after => "turbolinks\n"
        else
          copy_file "application.js", js_manifest
        end

        css_manifest = 'app/assets/stylesheets/application.css'
        scss_manifest = 'app/assets/stylesheets/application.scss'

        if File.exist?(css_manifest)
          File.delete(css_manifest)
          if File.exist?(scss_manifest)
            File.delete(scss_manifest)
            copy_file "application.scss", "app/assets/stylesheets/application.scss"
            copy_file "bootstrap_forms.scss", "app/assets/stylesheets/bootstrap_forms.scss"
          else
            copy_file "application.scss", "app/assets/stylesheets/application.scss"
            copy_file "bootstrap_forms.scss", "app/assets/stylesheets/bootstrap_forms.scss"
          end
        else
          copy_file "application.scss", "app/assets/stylesheets/application.scss"
          copy_file "bootstrap_forms.scss", "app/assets/stylesheets/bootstrap_forms.scss"
        end

        # Adding Templates
        app = ::Rails.application
        @app_name = app.class.to_s.split("::").first
        ext = app.config.generators.options[:rails][:template_engine] || :erb
        template "layout.html.#{ext}", "app/views/layouts/application.html.#{ext}"
        template "_head.html.#{ext}", "app/views/shared/_head.html.#{ext}"
        template "_navbar.html.#{ext}", "app/views/shared/_navbar.html.#{ext}"
        template "_footer.html.#{ext}", "app/views/shared/_footer.html.#{ext}"
        template "_notices.html.#{ext}", "app/views/shared/_notices.html.#{ext}"
        template "_devise.html.#{ext}", "app/views/shared/_devise.html.#{ext}"
        copy_file "application_helper.rb", "app/helpers/application_helper.rb"

        # Adding Templates Folder for future Generators
        copy_file "_form.html.erb", "lib/templates/erb/scaffold/_form.html.erb"
        copy_file "edit.html.erb", "lib/templates/erb/scaffold/edit.html.erb"
        copy_file "index.html.erb", "lib/templates/erb/scaffold/index.html.erb"
        copy_file "new.html.erb", "lib/templates/erb/scaffold/new.html.erb"
        copy_file "show.html.erb", "lib/templates/erb/scaffold/show.html.erb"

        append_to_file "Gemfile", "# Adding gems required by BootstrapMan\ngem 'jquery-rails'\ngem 'bootstrap'\ngem 'font-awesome-rails'\ngem 'bootstrap_form'\n"
      end
    end
  end
end
