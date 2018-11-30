Gem::Specification.new do |s|
  s.name        = 'jwt_manager'
  s.version     = '0.0.2'
  s.date        = '2018-11-30'
  s.summary     = 'JWT Token Management'
  s.description = 'A simple gem to encapsulate JWT management functionality'
  s.authors     = ['Rafael Dalprá', 'Lee Farrell']
  s.email       = 'thedalpra@gmail.com'
  s.files       = ['lib/jwt_manager.rb']
  s.homepage    = 'http://rubygems.org/gems/jwt_manager'
  s.license     = 'MIT'

  # Dependencies
  s.add_runtime_dependency 'jwt', '~> 1.5', '>= 1.5.0'
end
