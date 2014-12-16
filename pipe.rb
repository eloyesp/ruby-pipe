#!/usr/bin/env ruby

require 'English'
# read contents from STDIN to STDOUT
# but: duplicate lines

while $stdin.gets do
  puts $LAST_READ_LINE
  puts $LAST_READ_LINE
end

puts 'ok'
