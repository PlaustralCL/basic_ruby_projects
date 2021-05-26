def shift_string(str, key)
  # Shifts the string based on the key. The string is converted to an array and 
  # then each character is converted to the ascii number value. The key is 
  # then added (or subtracted) to the ascii number to give a new value. At the
  # end, the ascii numbers are converted back to letters. An array containing
  # shifted characters is returned.
  # @param str {String}
  # @param key {Integer}
  # @return {Array}
  a_ascii = 97 # ascii/ unicode value for lowercase a
  z_ascii = 122 # ascii/ unicode value for lowercase z
  alphabet_length = 26
  shifted_array = []
  working_array = str.downcase.split("")
  working_array.each do |ltr|
    ltr = ltr.ord
    # check if the character is a letter. Non-letter characters are addded
    #   straight to the shifted array
    if ltr.between?(a_ascii, z_ascii)
      # positive keys
      if key >= 0 
        if (ltr + key) > z_ascii 
          # wrap around z back to a
          ltr = (ltr + key) - alphabet_length
        else
          ltr = ltr + key
        end
      # negative keys
      else 
        positive_key = key.abs
        if (ltr - positive_key) < a_ascii
          # wrap around a back to z
          ltr = (ltr - positive_key) + alphabet_length 
        else
          ltr = ltr - positive_key
        end
      end
    end
    shifted_array.push(ltr)
  end
  shifted_array.map {|num| num.chr}
end


def validate_case(user_string, shifted_array)
  # Compares the case of the characters in the orignal user_string to
  # characters in the shifted_array and changes the shifted_array as needed
  # to match
  # @param user_string [String] the original string from the user
  # @param shifted_array [Array] Array containing the characters after shifting
  shifted_array.each_with_index do |chr, index|
    if user_string[index] == user_string[index].upcase
      chr.upcase!
    end
  end
end


def get_input
  puts "This program will encrypt a string using a Caesar Cipher and the numeric key you provide."
  print "Enter a string: "
  user_string = gets.chomp

  print "Enter a number: "
  user_key = gets.chomp.to_i

  input_array = [user_string, user_key]
end

def normalize_key(key)
  # Normalizes the key to a number between 1 and 26
  # @param key [Integer] the key value
  # @return [Integer] value between 1 and 26 or -1 and -26
  positive_key = key.abs # the % function doesn't work well with negative numbers
  if positive_key > 26
    positive_key = positive_key % 26 
  end

  if key < 0
    key = 0 - positive_key
  else
    key = positive_key
  end
end


# Main code
  input_array = get_input()
  user_string = input_array[0]
  user_key = input_array[1]
  user_key = normalize_key(user_key)
  encrpyted_array = shift_string(user_string, user_key)
  encrpyted_array = validate_case(user_string, encrpyted_array)
  puts "The encrypted string: #{encrpyted_array.join("")}"
