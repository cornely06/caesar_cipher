def caesar_cipher(string, shift)
	return string if shift == 0
	string_array = string.split("")
	shift_array = string_array.map do |letter|
		if ("a".."z").include?(letter)
			to_ascii = letter.ord
			shifted = to_ascii + shift
			while shifted > 122 do 
              shifted -= 26
            end
            while shifted < 97 do 
              shifted += 26
            end
            shifted = shifted.chr
        elsif ("A".."Z").include?(letter)
			to_ascii = letter.ord
			shifted = to_ascii + shift
			while shifted > 90 do 
              shifted -= 26
            end
            while shifted < 65 do 
              shifted += 26
            end
            shifted = shifted.chr
        else letter
        end
end
	shift_array.join("")
end