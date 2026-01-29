LIST = {
  2 => ['a', 'b', 'c'],
  3 => ['d', 'e', 'f'],
  4 => ['g', 'h', 'i'],
  5 => ['j', 'k', 'l'],
  6 => ['m', 'n', 'o'],
  7 => ['p', 'q', 'r', 's'],
  8 => ['t', 'u', 'v'],
  9 => ['w', 'x', 'y', 'z']
}

# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  ans = ['']
  digits.split('').map(&:to_i).each do |n|
    tmp = []
    ans.each do |c1|
      LIST[n].each do |c2|
        tmp << c1 + c2
      end
    end
    ans = tmp
  end
  ans
end