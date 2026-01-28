# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  memo = {}
  hash = Hash.new(0)
  nums2 = []

  nums.each do |num|
    nums2 << num if hash[num] < 2
    hash[num] += 1
  end

  nums2 = nums2.sort
  nums2.each_with_index do |x, i|
    break if x.positive?

    nums2[(i+1)..].each do |y|
      z = 0 - x - y
      break if z.negative?
      next if hash[z] == 0
      next if hash[z] == 1 && (z == x || z == y)
      next if hash[z] == 2 && (z == x && z == y)

      memo[[x,y,z].sort] = true
    end
  end

  memo.keys
end