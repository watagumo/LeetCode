# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left = 0
  right = height.size - 1
  max = 0

  while(left != right)
    x = [height[left], height[right]].min * (right - left)
    max = x if max < x

    if height[left] < height[right]
      y = height[left]
      while(height[left]<=y && left < right)
        left += 1
      end
    else
      y = height[right]
      while(height[right]<=y && left < right)
        right -= 1
      end
    end
  end
  max
end