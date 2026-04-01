Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_bank_transfer'
  s.version     = '4.0.0'
  s.summary     = 'Spree extension for bank transfer payment method.'
  s.description = 'Allows admin to provide bank transfer payment method to users.'
  s.required_ruby_version = '>= 2.5.0'

  s.author   = 'Tomas Srna'
  s.email    = 'tomas@srna.sk'
  s.homepage = 'https://srna.sk'
  s.license  = 'MIT'

  s.files       = `git ls-files`.split("\n")
  s.require_path = 'lib'

  s.add_dependency 'spree_core', '>= 3.7', '< 5'
  s.add_dependency 'deface', '~> 1.0'
end
