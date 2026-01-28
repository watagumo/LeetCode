inputs = gets.chomp.split
file_name = "#{['%04d' % inputs[0][0..-2].to_i, *inputs[1..]].join('_').downcase}.rb"

File.open(file_name, 'w')
