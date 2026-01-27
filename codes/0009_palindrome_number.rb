# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  s = x.to_s
  s == s.reverse
end