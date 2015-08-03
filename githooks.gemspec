# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


Gem::Specification.new do |gem|
  gem.name          = "githooks"
  gem.version       = "0.0.1"
  gem.authors       = ["Bapu"]
  gem.email         = ["breddy@prosper.com"]
  gem.description   = ""
  gem.summary       = ""
  gem.homepage      = "https://github.com/"
  gem.license       = "MIT"

  gem.add_development_dependency "rspec", "~> 3.2"
  gem.add_development_dependency "rake", "~> 10.0"
  #gem.add_development_dependency "rake-compiler", ">= 0.8.3"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.extensions    = ["ext/extconf.rb"]
  gem.require_paths = ["lib"]
end
