def shift_string(str, key)
  shifted_array = []
  working_string = str.downcase.split("")
  working_string.each do |ltr|
    ltr = ltr.ord
    if ltr.between?(97, 122)
      if (ltr + key) > 122
        shifted_array.push((ltr + key) - 26)
      else
        shifted_array.push(ltr + key)
      end
    else
      shifted_array.push(ltr)
    end
  end
  shifted_array.map {|num| num.chr}
end

def validate_case(user_string, shifted_array)
  # Compares the case of the characters in the orignal user_string to
  # characters in the shifted_array and changes the shifted_array as needed
  # to match
  # @param user_string [String] the original string from the user
  # @ param shifted_array [Array] Array containing the characters after shifting
  shifted_array.each_with_index do |chr, index|
    if user_string[index] == user_string[index].upcase
      chr.upcase!
    end
  end
end

def convert_to_number(ltr)
  # Receives a string and converts it to an interger representing the ascii 
  # decimal value.
  # @param ltr [string] single character to convert
  # @return [integer] ascii code of ltr
  ltr.ord
end

def convert_to_letter(num)
  # Converts a number to its encoding 
  # @ param num [integer] 
  # @ return [string] string representing ascii encoding
  num.chr
end

def get_input
  puts "This program will encrypt a string using a Caesar Cipher and the numeric key you provide."
  print "Enter a string: "
  user_string = gets.chomp

  print "Enter a number: "
  user_key = gets.chomp.to_i

  input_array = [user_string, user_key]
end

# to lower case
# apply cipher
#   use ascii numbers (str.ord)
#   wrap if necessary
# restore case
#   check for puncuation and numbers

def main
  input_array = get_input()
  user_string = input_array[0]
  user_key = input_array[1]
  encrpyted_array = shift_string(user_string, user_key)
  encrpyted_array = validate_case(user_string, encrpyted_array)
  puts "The encrypted string = #{encrpyted_array.join("")}"
  
end


# call main function
main






