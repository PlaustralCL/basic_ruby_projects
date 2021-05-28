# Basic Ruby Project

## Caesar Cipher

## Sub Strings
### Description
Implement a method #substrings that takes a word as the first argument and then
an array of valid substrings (your dictionary) as the second argument. It should
return a hash listing each substring (case insensitive) that was found in the
original string and how many times it was found.

### Reflection
* I had a lot of trouble reducing an array to a hash until I realized that the
hash needed to be returned explicitly.
* It was a initially a little tricky keeping track of what was a string, an array
or a hash. The has_key? method does not work on a string.