# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  max = 0
  left = 0
  hash = {}

  s.length.times do |i|
    char = s[i]
    if hash[char] && hash[char] >= left
      left = hash[char] + 1
    end
    hash[char] = i
    max = [max, i - left + 1].max
  end
  max
end
