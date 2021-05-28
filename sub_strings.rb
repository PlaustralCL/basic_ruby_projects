def get_input
  print "Please enter a string to search for: "
  user_input = gets.chomp
end


def substrings(str, dictionary)
  array_from_str = str.split(" ")
  dictionary.reduce({}) do |memo, dict_word|
    array_from_str.each do |str_word|

      if str_word.include?(dict_word)
        if memo.has_key?(dict_word)
          memo[dict_word] += 1
        else
          memo[dict_word] = 1
        end
  
        
      end



    end
    
  
    memo


    

  end

end




dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# user_input = get_input()
puts substrings("below low", dictionary)




# usefull site for using reduce to go from array to hash: https://bytesize.cultivatehq.com/ruby/2019/01/03/ruby-reduce-to-object-gotcha.html
# another usefule site: https://technology.customink.com/blog/2014/10/14/better-hash-injection-using-each-with-object/

