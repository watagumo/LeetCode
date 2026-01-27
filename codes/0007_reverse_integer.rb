LIMIT = 2 ** 31

# @param {Integer} x
# @return {Integer}
def reverse(x)
    y = x.abs.to_s.reverse.to_i
    return 0 if y > LIMIT
    x < 0 ? -y : y
end