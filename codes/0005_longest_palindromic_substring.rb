# @param {String} s
# @return {String}
def longest_palindrome(s)
  max = 1
  ans = s[0]
  s.length.times do |i|
    left = i - 1
    right = i + 1
    while(left >= 0 && right < s.length && s[left] == s[right])
      length = right - left + 1
      if max < length
        max = length
        ans = s[left..right]
      end
      left -= 1
      right += 1
    end

    left = i
    right = i + 1
    while(left >= 0 && right < s.length && s[left] == s[right])
      length = right - left + 1
      if max < length
        max = length
        ans = s[left..right]
      end
      left -= 1
      right += 1
    end
  end
  ans
end