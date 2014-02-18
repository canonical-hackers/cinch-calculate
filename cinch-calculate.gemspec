# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cinch/plugins/calculate/version'

Gem::Specification.new do |gem|
  gem.name          = 'cinch-calculate'
  gem.version       = Cinch::Plugins::Calculate::VERSION
  gem.authors       = ['Brian Haberer', 'Paul Visscher']
  gem.email         = ['bhaberer@gmail.com']
  gem.description   = %q{Cinch Plugin to alow users to pass mathematical problems to the bot for evaluation}
  gem.summary       = %q{Cinch Plugin for Math}
  gem.homepage      = 'https://github.com/canonical-hackers/cinch-calculate'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'coveralls'
  gem.add_development_dependency 'cinch-test'

  gem.add_dependency 'cinch',       '~> 2.0.5'
end
