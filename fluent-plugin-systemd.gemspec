# -*- encoding: utf-8 -*-

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-systemd"
  spec.version       = "0.1.1.pre"
  spec.authors       = ["Ed Robinson"]
  spec.email         = ["ed@reevoo.com"]

  spec.summary       = "Input plugin to read from systemd journal."
  spec.description   = "This is a fluentd input plugin. It reads logs from the systemd journal."
  spec.homepage      = "https://github.com/reevoo/fluent-plugin-systemd"
  spec.license       = "MIT"


  spec.files         = Dir["**/**"].reject { |f| f.match(/^(test|spec|features)\//) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit", "~> 2.5"
  spec.add_development_dependency "reevoocop"

  spec.add_runtime_dependency "fluentd", [">= 0.14.11", "< 2"]
  spec.add_runtime_dependency "systemd-journal", "~> 1.2"
end
