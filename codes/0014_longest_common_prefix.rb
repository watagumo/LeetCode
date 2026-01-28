# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  x = 0
  str0 = strs[0]
  str0.each_char.with_index do |c, i|
    strs[1..].each do |str|
      return str0[0...x] if str[i] != c
    end
    x += 1
  end
  str0
end