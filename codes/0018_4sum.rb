# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  memo = {}
  hash = Hash.new(0)
  nums2 = []

  nums.each do |num|
    nums2 << num if hash[num] < 3
    hash[num] += 1
  end

  sorted_nums = nums2.sort
  (0...(sorted_nums.length - 2)).each do |i|
    a = sorted_nums[i]
    break if target.positive? && a > target

    ((i + 1)...(sorted_nums.length - 1)).each do |j|
      b = sorted_nums[j]
      break if target.positive? && a + b > target

      ((j + 1)...(sorted_nums.length)).each do |k|
        c = sorted_nums[k]
        d = target - a - b - c

        break if target.positive? && d.negative?
        next if hash[d] == 0
        next if hash[d] == 1 && ((a == d || b == d || c == d))
        next if hash[d] == 2 && ((a == d && b == d) || (a == d && c == d) || (b == d && c == d))
        next if hash[d] == 3 && (a == d && b == d && c == d)

        memo[[a, b, c, d].sort] = true
      end
    end
  end
  memo.keys
end