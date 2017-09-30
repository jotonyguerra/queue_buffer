require_relative 'lib/queue'

buffer = Launch::Queue.new
File.open('actung.hum copy.txt', 'r') do |file|
  f.each_char do |char|
    buffer.enter(char)
  end
end
