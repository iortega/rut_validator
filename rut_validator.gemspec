# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "rut_validator"
  gem.version       = "0.0.2"
  gem.authors       = ["Ignacio Ortega"]
  gem.email         = ["ignacio.ortega@gmail.com"]
  gem.description   = %q{Chilean RUT validator for rails 3. See homepage for details http://github.com/iortega/rut_validator}
  gem.summary       = %q{Chilean RUT validator}
  gem.homepage      = %{http://github.com/iortega/rut_validator}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'activemodel', '>=0'
  gem.add_development_dependency "rake"
  gem.add_development_dependency 'rspec', '>= 0'
  gem.add_development_dependency 'simplecov', '>=0'
end
