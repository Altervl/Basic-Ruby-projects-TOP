# frozen_string_literal: true

def sub_strings(word, dictionary)
  result = Hash.new(0)
  word_arr = word.downcase.split
  dictionary.each do |i|
    word_arr.each do |w|
      result[i] += 1 if w.include?(i)
    end
  end
  result
end

arr = %w[below down go going horn how howdy it i low own part partner sit]
puts sub_strings('below', arr)
puts sub_strings("Howdy partner, sit down! How's it going?", arr)
