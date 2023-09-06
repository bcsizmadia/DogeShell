# frozen_string_literal: true

require_relative 'lib/doge_shell'

Gem::Specification.new do |spec|
  spec.name = 'doge_shell'
  spec.version = DogeShell::VERSION
  spec.authors = ['Bence Csizmadia']

  spec.summary = 'Doge Shell'
  spec.homepage = 'https://github.com/bcsizmadia/doge_shell'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end

  spec.executables = 'doge'
  spec.require_paths = ['lib']

  spec.add_dependency 'open3', '~> 0.1.2'

  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rubocop', '~> 1.56'
  spec.add_development_dependency 'rubocop-rake', '~> 0.6.0'
end
