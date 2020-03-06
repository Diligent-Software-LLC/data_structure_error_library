VERSION = '0.1.0'

Gem::Specification.new do |spec|
  spec.name    = "data_structure_error_library"
  spec.version = VERSION
  spec.authors = ["Bradley J. Tannor", 'Diligent Software LLC']
  spec.email   = ["bradleytannor@gmail.com"]

  spec.summary               = %q{A DataStructureError exception class
library.}
  spec.description           = %q{A DataStructureError exception class
library.}
  spec.homepage              = 'https://docs.diligentsoftware.org'
  spec.license               = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.5")

  spec.metadata["allowed_push_host"] =
      'https://rubygems.pkg.github.com/Diligent-Software-LLC'
  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   =
      'https://github.com/Diligent-Software-LLC/data_structure_error_library'
  spec.metadata["changelog_uri"]     = "https://docs.diligentsoftware" +
      ".org/datastructureerror/library/changelog"
  spec.metadata['donations_uri']     = 'https://opencollective.com' +
      '/datastructureerror'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development and testing dependencies
  spec.add_development_dependency "bundler", "~> 2.1.2"
  spec.add_development_dependency "simplecov", "~> 0.17.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  # Gem specific runtime dependencies
  spec.add_runtime_dependency 'data_structure_error', '~> 1.1.4'
  spec.add_runtime_dependency 'data_structure_error_impl', '~> 1.4.5'

end
