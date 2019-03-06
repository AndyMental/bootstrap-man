
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "BootstrapMan/version"

Gem::Specification.new do |spec|
  spec.name          = "BootstrapMan"
  spec.version       = BootstrapMan::VERSION
  spec.authors       = ["AndyMental"]
  spec.email         = ["andy.is.mental@gmail.com"]

  spec.summary       = %q{Tool to setup Bootstrap with Bootstrap View Generators including Bootstrap Form}
  spec.description   = %q{Bootstrap Man is simple solution to get going with application without worrying about setting up Bootstrap Gems and Importing Views.}
  spec.homepage      = "https://github.com/AndyMental/bootstrap-man"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "jquery-rails", "~> 4.3"
  spec.add_dependency "bootstrap", "~> 4.3.1"
  spec.add_dependency "font-awesome-rails", "~> 4.7"
  spec.add_dependency "bootstrap_form", "~> 4.1"
end
