class Book
# write your code here
    attr_accessor :title

    def title
        title_words = @title.split(" ")
        title_words = title_words.map do |word|
            if small_word?(word)
                word
            else
                word.capitalize
            end
        end

        #always capitalize the first word
        title_words[0] = title_words[0].capitalize
        @title = title_words.join(" ")
    end

    def small_word?(word)
        ["and", "the", "an", "a", "in", "of"].include?(word)
    end

end

