
def cipher_cesar(text, key)
    alphabet = ["A", "B", "C", "D", "F", "G" ,"H", "I", "J", "K", "L", "M", "N", "Ñ", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    encryptedText = ""

    text.each_char do |character|
        if alphabet.include?(character.upcase)
            actual_position = alphabet.index(character.upcase)
            new_position = (actual_position.to_i + key) % alphabet.length
            new_character = alphabet[new_position]
            encryptedText += new_character
        else
            encryptedText += character
        end
    end
    return encryptedText

end
cipher_cesar("Hello!", 5)