# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  arr = (nums1 + nums2).sort

  length = arr.length
  if length % 2 == 1
    arr[length / 2]
  else
    arr[length / 2 - 1, 2].sum / 2.0
  end
end
