def caesar_cipher(words, shift_factor)
	n_word = ""
	words.each_char do |i|
		shift_factor.times do
			if i.match(/[a-z-A-Z]/)
				if i == "z"
					i = "a"
					next
				elsif i == "Z"
					i = "A"
					next
				end
				i.next!
			else
				i = i
			end
		end
		n_word += i
	end
	puts n_word
end

caesar_cipher("What a string!", 5)