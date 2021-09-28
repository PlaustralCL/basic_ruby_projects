# frozen_string_literal: true

def caesar_cipher(string, key)
  cipher_lower = ("a".."z").to_a.rotate(key).join
  cipher_upper = ("A".."Z").to_a.rotate(key).join
  cipher = cipher_lower + cipher_upper
  string.tr("a-zA-Z", cipher)
end
