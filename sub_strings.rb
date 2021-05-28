# Insight in reducing an array to a hash, particullary the need to explicity
# return the accumlator hash came from the following sites:
# https://bytesize.cultivatehq.com/ruby/2019/01/03/ruby-reduce-to-object-gotcha.html
# https://technology.customink.com/blog/2014/10/14/better-hash-injection-using-each-with-object/

def substrings(str, dictionary)
  array_from_str = str.split(" ")
  dictionary.reduce({}) do |memo, dict_word|
    array_from_str.each do |str_word|
      if str_word.downcase.include?(dict_word)
        if memo.has_key?(dict_word)
          memo[dict_word] += 1
        else
          memo[dict_word] = 1
        end
      end
    end
    # memo must be returned to maintain the hash
    memo
  end
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "below"
puts substrings("below", dictionary)
puts ""
puts "Howdy partner, sit down! How's it going?"
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
