# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_bank_transfer'
  s.version     = '3.2.0'
  s.summary     = 'Spree extension to create bank transfer payment method.'
  s.description = 'This Spree extension allows admin to provide bank transfer payment method to its users.'
  s.required_ruby_version = '>= 2.2.0'

  s.author    = 'Tomas Srna'
  s.email     = 'tomas@srna.sk'
  s.homepage  = 'https://srna.sk'
  s.license   = "MIT"
  s.files       = `git ls-files`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '3.1.0'

end
