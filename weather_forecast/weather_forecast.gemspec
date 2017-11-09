# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "weather_forecast/version"

Gem::Specification.new do |spec|
  spec.name          = "weather_forecast"
  spec.version       = WeatherForecast::VERSION
  spec.authors       = ["'Breyanna Vass'"]
  spec.email         = ["'breyanna.bvass@gmail.com'"]

  spec.summary       = %q{Get the temperature for 5 different locations.}
  spec.description   = %q{User types in a number that corresponses to a specific city to get the temperature, humidity and windSpeed.}
  spec.homepage      = "https://github.com/newedition994/cli-data-gem-assessment-v-000/tree/master/weather_forecast"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_runtime_dependency "rest-client"
end
