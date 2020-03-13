# https://app.codility.com/programmers/lessons/6-sorting/max_product_of_three/
# Test Score 100 %

# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  
    max = 0
    # write your code in Ruby 2.2
    max if a.nil? || a.length == 0
    
    if a.length < 4
      max = 1
      a.each do |item|
        max = max * item
      end
      max
    end
    
    # order first => nlogn +  left and right edge max three
    a.sort!
    
    # - - -
    # + + +
    if a[0] >= 0 || a[-1] <= 0 || a[1] >= 0
      max = a[-1] * a[-2] * a[-3]
      max
    end
    
    # n = 4
    max = a[0] * a[1] * a[2]
    max = [max,a[0] * a[1] * a[-1]].max
    max = [max,a[0] * a[-2] * a[-1]].max
    max = [max,a[-3] * a[-2] * a[-1]].max
    max
  end