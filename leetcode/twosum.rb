# frozen_string_literal: true

# https://leetcode.com/problems/two-sum/submissions/
# Runtime: 32 ms, faster than 93.60% of Ruby online submissions for Two Sum.
# Memory Usage: 10.2 MB, less than 9.09% of Ruby online submissions for Two Sum.
 
# use hash set to quick find result

def two_sum(nums, target)
  num_set = {}

  nums.each_with_index do |item, index|
    num_set[item] = index unless num_set.key?(item)
  end

  (0..nums.length - 1).each do |index|
    second_num = target - nums[index]

    return [index, num_set[second_num]] if num_set.key?(second_num) && index != num_set[second_num]
  end

  nil
end
