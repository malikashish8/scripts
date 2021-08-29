Gem::Specification.new do |s|
  s.name        = 'mygem'
  s.version     = '0.0.0'
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Ashish Malik"]
  s.email       = 'nomail@example.com'
  s.files       = ["lib/mygem.rb"]
  s.homepage    =
    'https://rubygems.org/gems/hola'
  s.license       = 'MIT'

  # https://malikashish8.github.io/scripts/mygem/new
  file = File.open("new.md", "a") { |f| f.write "built at - #{Time.now}\n" }
  puts 'Hi from mygem.gemspec!'
end
