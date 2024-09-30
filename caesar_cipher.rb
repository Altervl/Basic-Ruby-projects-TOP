def caesar_cipher(str, step)
  ciphered_str = str.split("").map do |char|
    if ('a'..'z').include?(char.downcase)
      ciphered_code = char.downcase.ord + step
      ciphered_code -= 26 if ciphered_code > 122
      if char == char.upcase
        ciphered_code.chr.upcase
      else
        ciphered_code.chr
      end
    else
      char
    end
  end
  ciphered_str.join
end

puts caesar_cipher("What a string!", 5)
