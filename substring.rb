def substrings(sentence)
	dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
	words = sentence.split(" ")
	cont = 0
	word_freq = Hash.new(0)
	words.each {|word|
		word.downcase! 
		dictionary.each do |dict|
			if word[dict]
				word_freq[dict] += 1 
			end
		end}
	print word_freq
end

substrings("Howdy partner, sit down! How's it going?")