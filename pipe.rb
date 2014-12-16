#!/usr/bin/env ruby

require 'English'
# read contents from STDIN to STDOUT
# but: duplicate lines

class IO
  def pipe
    while gets do
      yield $LAST_READ_LINE
    end
  end
end

$stdin.pipe do |line|
  puts line
  puts line
end

puts 'ok'
