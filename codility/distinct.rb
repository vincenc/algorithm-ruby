# https://app.codility.com/programmers/lessons/6-sorting/distinct/
# Test Score 100 %

require 'set'

# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  if a.nil?
    0
  end
  
  result_hash = Set.new
  
  a.each do |item|
    result_hash << item # unless item.nil?
  end
  
  result_hash.length
  
end