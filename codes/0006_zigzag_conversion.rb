# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1
  n = num_rows * 2 - 2

  ans = Array.new(num_rows) { [] }
  s.each_char.with_index do |c, i|
    x = i % n
    ans[x < num_rows ? x : num_rows * 2 - x - 2] << c
  end
  ans.map(&:join).join
end