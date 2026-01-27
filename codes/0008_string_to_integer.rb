# @param {String} s
# @return {Integer}
def my_atoi(s)
    limit = 2 ** 31
    ans = s.to_i
    if -limit > ans
      -limit
    elsif limit <= ans
      limit - 1
    else
      ans
    end
end