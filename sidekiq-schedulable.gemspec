# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/schedulable/version'

Gem::Specification.new do |spec|
  spec.name          = 'sidekiq-schedulable'
  spec.version       = Sidekiq::Schedulable::VERSION
  spec.authors       = ['Jami Couch']
  spec.email         = ['jami.couch@metova.com']

  spec.summary       = 'Easy user configurable scheduling'
  spec.description   = 'Easy user configurable scheduling'
  spec.homepage      = 'https://bitbucket.org/metova/sidekiq-schedulable-gem'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://gems.metova.com'
  else
    fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'sidekiq'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'bundler', '~> 2.4.22'
  spec.add_development_dependency 'rake', '~> 12.3.1'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'yarjuf'
end
