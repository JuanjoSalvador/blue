# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "blue-jekyll-theme"
  spec.version       = "0.2.0"
  spec.authors       = ["Juanjo Salvador"]
  spec.email         = ["juanjosalvador@netc.eu"]

  spec.summary       = "Minimalist Jekyll theme based on Bulma"
  spec.description   = "Minimalist Jekyll theme based on Bulma with customizable colors, focused on readability"
  spec.homepage      = "https://jsalvador.me/blog/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
end
