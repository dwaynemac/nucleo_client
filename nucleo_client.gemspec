# encoding: utf-8
Gem::Specification.new do |gem|
  gem.authors       = ["Dwayne Macgowan"]
  gem.email         = ["dwaynemac@gmail.com"]
  gem.description   = %q{Cliente do nucleo}
  gem.summary       = %q{Client library Nucleo API}
  gem.homepage      = ""

  gem.files = Dir["{app,lib,config,vendor}/**/*"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "nucleo_client"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.1'

  gem.add_dependency "railties", ">= 3.1"
  gem.add_dependency 'logical_model', "~> 0.5.6"
  gem.add_dependency 'protected_attributes'

end
