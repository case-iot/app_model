Gem::Specification.new do |s|
  s.name        = 'case_model'
  s.version     = '0.0.1'
  s.date        = '2016-01-28'
  s.summary     = 'Resolver for the CASE ecosystem application models'
  s.description = 'Built for the Context-Aware Software Ecosystem. Resolves application model requirements using semantic reasoning.'
  s.authors     = ['Matus Tomlein']
  s.email       = 'matus@cs.au.dk'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.homepage    = 'https://github.com/case-iot/app_model'
  s.license     = 'MIT'
end
