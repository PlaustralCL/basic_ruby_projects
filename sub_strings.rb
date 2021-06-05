# frozen_string_literal: true

# Insight in reducing an array to a hash, particullary the need to explicity
# return the accumlator hash came from the following sites:
# https://bytesize.cultivatehq.com/ruby/2019/01/03/ruby-reduce-to-object-gotcha.html
# https://technology.customink.com/blog/2014/10/14/better-hash-injection-using-each-with-object/

def substrings(str, dictionary)
  array_from_str = str.split(' ')
  dictionary.each_with_object({}) do |dict_word, memo|
    array_from_str.each do |str_word|
      if str_word.downcase.include?(dict_word)
        memo.key?(dict_word) ? memo[dict_word] += 1 : memo[dict_word] = 1
      end
    end
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts 'below'
puts substrings('below', dictionary)
puts ''
puts "Howdy partner, sit down! How's it going?"
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
