require "pry"

class PigLatinizer


    def piglatinize(text)
        split_words_array = text.split(" ").collect{ |word| word.split /([aeiouAEIOU].*)/}
        new_words_array = []
        split_words_array.each do |pair| 
            # binding.pry
            if pair[0] == ""
                new_word = pair[1] + "way"
                new_words_array << new_word
            elsif pair.length == 1
                new_word = pair[0] + "way"
                new_words_array << new_word
            else
                new_word = pair[1] + pair[0] + "ay"
                new_words_array << new_word
            end
        end
        new_phrase = new_words_array.join(" ")
    end
end