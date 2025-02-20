# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'truemail/version'

Gem::Specification.new do |spec|
  spec.name          = 'truemail'
  spec.version       = Truemail::VERSION
  spec.authors       = ['Vladislav Trotsenko']
  spec.email         = ['admin@bestweb.com.ua']

  spec.summary       = %(truemail)
  spec.description   = %(Configurable framework agnostic plain Ruby email validator. Verify email via Regex, DNS, SMTP and even more.)

  spec.homepage      = 'https://github.com/truemail-rb/truemail'
  spec.license       = 'MIT'

  spec.metadata = {
    'homepage_uri' => 'https://truemail-rb.org',
    'changelog_uri' => 'https://github.com/truemail-rb/truemail/blob/master/CHANGELOG.md',
    'source_code_uri' => 'https://github.com/truemail-rb/truemail',
    'documentation_uri' => 'https://truemail-rb.org/truemail-gem',
    'bug_tracker_uri' => 'https://github.com/truemail-rb/truemail/issues'
  }

  spec.required_ruby_version = '>= 2.4.9'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'simpleidn', '~> 0.2.1'

  spec.add_development_dependency 'bundler', '~> 2.2', '>= 2.2.23'
  spec.add_development_dependency 'bundler-audit', '~> 0.8.0'
  spec.add_development_dependency 'dns_mock', '~> 1.3', '>= 1.3.1'
  spec.add_development_dependency 'faker', '~> 2.18'
  spec.add_development_dependency 'fasterer', '~> 0.9.0'
  spec.add_development_dependency 'json_matchers', '~> 0.11.1'
  spec.add_development_dependency 'overcommit', '~> 0.58.0'
  spec.add_development_dependency 'pry-byebug', '~> 3.9'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.6'
  spec.add_development_dependency 'reek', '~> 6.0', '>= 6.0.4'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'rubocop', '~> 1.18', '>= 1.18.3'
  spec.add_development_dependency 'rubocop-performance', '~> 1.11', '>= 1.11.4'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.4'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'
  spec.add_development_dependency 'truemail-rspec', '~> 0.6'
  spec.add_development_dependency 'webmock', '~> 3.13'
end
