# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "shop_tops_cli_app/version"

Gem::Specification.new do |spec|
  spec.name          = "shop_tops_cli_app"
  spec.version       = ShopTopsCliApp::VERSION
  spec.authors       = ["'Breyanna Vass'"]
  spec.email         = ["'breyanna.bvass@gmail.com'"]

  spec.summary       = %q{Use the bundle to get different categories of tops and see various types of tops available at forever21.com}
  spec.description   = %q{Shops tops from forever 21}
  spec.homepage      = "https://github.com/newedition994/cli-data-gem-assessment-v-000"
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
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"

end
