# Your TextAnalyzer model code will go here.
class TextAnalyzer
    attr_reader :text

    def initialize(text)
        @text = text.downcase
    end

    def count_of_words
        words = text.split(" ")
        words.count
    end

    def count_of_vowels
        text.scan(/[aeiou]/).count
    end

    def count_of_consonants
        text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    end

    def most_used_letter
        arr = text.gsub(/[^a-z]/, '').split('')
        arr1 = arr.uniq
        hash = {}

        arr1.map {|char| hash[char] = arr.count(char)}

        biggest = hash.max_by{|k,v| v}
    end
end



       
