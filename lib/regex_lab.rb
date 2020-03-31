def starts_with_a_vowel?(word)
    !!word.match(/^[AaEeIiOoUu]/)
end

def words_starting_with_un_and_ending_with_ing(text)
    # words = text.split(" ")
    # words.select do |word|
    #     !!word.match(/^un/) && !!word.match(/ing$/)
    # end
    un_words = text.scan(/un\w+/)
    un_words.grep(/\w+ing/)
end

def words_five_letters_long(text)
    words = text.split(" ")
    words.grep(/^\w{5}$/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    !!text.match(/^[A-Z]/) && !!text.match(/[.!?]$/)
end

def valid_phone_number?(phone)
    !!phone.match(/([0-9] *){10}|(\([0-9]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/)
end
