require_relative "lib/literal_enum/version"

Gem::Specification.new do |spec|
  spec.name        = "literal_enum"
  spec.version     = LiteralEnum::VERSION
  spec.authors     = ["letItCurl"]
  spec.email       = ["rolandlopez.developer@gmail.com"]
  spec.homepage    = "TODO"
  spec.summary     = "Stop using integers in your database when using enums. Use the enum type define in your model for better DX."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.2"
end
