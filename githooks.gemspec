
Gem::Specification.new do |spec|
  spec.name        = 'githooks-gem'
  spec.version     = '1.0.0' 
  spec.summary     = "Testing Gem"
  spec.description = "A simple hello world gem"
  spec.authors     = ["Bapu Reddy"]
  spec.email       = 'breddy@prosper.com'

  #spec.files       = ["lib/git-hooks.rb"]
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  #spec.extensions    << 'git-hooks.sh'
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rspec', '~> 3.2'

end

