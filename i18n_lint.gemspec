# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i18n_lint/version'

Gem::Specification.new do |spec|
  spec.name          = 'i18n_lint'
  spec.version       = I18nLint::VERSION
  spec.authors       = ['Dmitry Koval']
  spec.email         = ['dkoval@protonmail.com']

  spec.summary       = 'Check your files for i18n where needed.'
  spec.description   = 'This gem checks if you use i18n everywhere you need.'
  spec.homepage      = 'https://github.com/dkkoval/i18n_lint'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
