require_relative "lib/literal_enum/version"

Gem::Specification.new do |spec|
  spec.name        = "literal_enum"
  spec.version     = LiteralEnum::VERSION
  spec.authors     = ["letItCurl"]
  spec.email       = ["rolandlopez.developer@gmail.com"]
  spec.summary     = "Stop using integers in your database when using enums. Use the enum type define in your model for better DX."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.2"
end
