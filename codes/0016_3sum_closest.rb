# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!

  min_diff = (target - nums[0] - nums[1] - nums[2]).abs
  min_sum = nums[0] + nums[1] + nums[2]
  (0...(nums.length - 2)).each do |i|
    j = i + 1
    k = nums.length - 1

    while(j < k)
      current_sum = nums[i] + nums[j] + nums[k]
      diff = (target - current_sum)

      return current_sum if diff == 0

      if diff.abs < min_diff
        min_diff = diff.abs
        min_sum = current_sum
      end

      diff.positive? ? j += 1 : k -= 1
    end
  end
  min_sum
end