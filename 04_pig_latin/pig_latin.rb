#write your code here

# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be confusing. 
# It obeys a few simple rules (below) but 
# when it's spoken quickly it's really difficult 
# for non-children (and non-native speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, 
# add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, 
# and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.


def translate(text)
    #strip down text to an array 
    text_array = text.split(" ");

    translation_array = text_array.map do |word|
        if word.match(/^qu|Qu/)
            word[2, word.length] + "quay"
        elsif word.match(/^[^AEIOUaeiou]+qu|^[^AEIOUaeiou]+/)
            my_match = word.match(/^[^AEIOUaeiou]+qu|^[^AEIOUaeiou]+/)
            my_match_length = my_match[0].length
            word[my_match_length, word.length] + my_match[0].downcase + "ay"
        else 
            word + "ay"
        end
    end

    translation_array.join(" ")
end

puts("What can I translate to you, oink oink?")
input = gets.chomp

puts "Here you go: "
puts translate(input)