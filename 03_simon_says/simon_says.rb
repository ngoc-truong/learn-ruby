#write your code here
def echo(text)
    text
end

def shout(text)
    text.upcase
end

def repeat(text, number = 1)
    if number == 1 or number == 0
        return text + " " + text
    end

    result = ""
    number.times do 
        result += text + " "
    end

    result.rstrip
end



def start_of_word(word, number)
    word[0...number]
end

def first_word(sentence)
    sentence.split(" ").first
end

def titleize(title)
    title_array = title.split(" ")

    short_words = ["a", "an", "the", "at", "and", "by", "but", "for", "from", "in", "of", "on", "over", "to", "up", "as", "and", "but", "or", "nor"]
    capitalized_title = title_array.map do |word|
        if (short_words.include?(word))
            word 
        else 
            word.capitalize
        end
    end

    #Capitalize the first word, no matter what
    capitalized_title[0] = capitalized_title[0].capitalize
    capitalized_title.join(" ")
end
