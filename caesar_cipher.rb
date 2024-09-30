def caesar_cipher(str, step)
  arr = str.split('')
  alphabet = ('a'..'z').to_a
  ciphered_str = arr.map do |char|
    letter = char.downcase
    if ('a'..'z').include?(letter)
      index = alphabet.index(letter) + step
      index -= 26 if index > 25
      alphabet[index]
    else
      char
    end
  end
  ciphered_str.join
end

puts caesar_cipher("What a string!", 5)
