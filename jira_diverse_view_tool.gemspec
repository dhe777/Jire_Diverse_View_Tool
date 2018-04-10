
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jira_diverse_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "jira_diverse_view_tool"
  spec.version       = JiraDiverseViewTool::VERSION
  spec.authors       = ["Dennis Henry Espinoza"]
  spec.email         = ["dhe777@comcast.net"]

  spec.summary       = %q{Produces copyright and date that dynamically updates}
  spec.description   = %q{Provides generated HTML data for rails Portfolio Project}
  spec.homepage      = "https://devcamp.com"
  spec.license       = "MIT"

  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
