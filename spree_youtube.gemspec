Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_youtube'
  s.version     = '1.3.0'
  s.summary     = 'Adds youtube videos to Spree e-commerce products'
  s.description = 'Allows adding multiuple youtube videos, and a thumbnail selector' +
                  'to a Spree commerce product using YouTube API'
  s.required_ruby_version = '>= 2.3.0'

  s.author            = 'Yad F'
  s.email             = 'yad.faeq+ruby@gmail.com'

  s.homepage     = 'https://github.com/0bserver07/Spree-YouTube'
  s.licenses = ["MIT"]
  s.requirements = ["none"]

  s.require_path = 'lib'

  s.add_dependency 'spree_core', '~> 3.1.0'
  s.add_dependency 'yt', '~> 0.25.5'

  # test suite

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'

  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'shoulda-matchers'
end
