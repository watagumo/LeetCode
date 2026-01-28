CONVERTER = {
  'M'  => 1000,
  'CM' => 900,
  'D'  => 500,
  'CD' => 400,
  'C'  => 100,
  'XC' => 90,
  'L'  => 50,
  'XL' => 40,
  'X'  => 10,
  'IX' => 9,
  'V'  => 5,
  'IV' => 4,
  'I'  => 1
}

# @param {String} s
# @return {Integer}
def roman_to_int(s)
    length = s.length
    sum = 0
    point = 0
    while(point < length)
      x = CONVERTER[s[point, 2]]
      if x
        sum += x
        point += 2
      else
        sum += CONVERTER[s[point]]
        point += 1
      end
    end
    sum
end