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

  file = File.open("new.md", "w") { |f| f.write "#{Time.now} - Is the time now\n" }
  puts 'Hi from mygem.gemspec!'
end
