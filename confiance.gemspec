# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'confiance/version'

Gem::Specification.new do |spec|
  s.add_development_dependency "aruba", "~> 0.6.2"
  s.add_development_dependency "css_parser", "~> 1.4.1"
  s.add_development_dependency "rake", "~> 11.1.2"
  s.add_development_dependency "rspec", "~> 3.4.0"
  s.add_development_dependency "scss_lint", "0.48.0"
  s.add_runtime_dependency "sass", "~> 3.4.22"
  s.add_runtime_dependency "thor", "~> 0.19.1"
  spec.name          = "confiance"
  spec.version       = Confiance::VERSION
  spec.authors       = [
    "Jonathan Beardstone",
    "Frédéric Lasnier"
  ]
  spec.email         = ["confiance@ouetquand.xyz"]

  spec.summary       = <<-SUM
    confiance the second layer
  SUM
  spec.description   = <<-DESC
    confiance est un composant de conception des équipes de Jonathan Beardstone.
  DESC
  spec.homepage      = "https://github.com/jbeardstone/confiance"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
