# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tlo/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["wycats"]
  gem.email         = ["wycats@gmail.com"]
  gem.description   = %q{A gift for señor t.lo}
  gem.summary       = %q{Minitest running in the rspec harness zomg}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tlo"
  gem.require_paths = ["lib"]
  gem.version       = TLo::VERSION
end
