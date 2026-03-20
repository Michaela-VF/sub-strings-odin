# Implement a method #substrings that 
# takes a #word as the first argument and then 
# an #array of valid substrings (your dictionary) as the second argument. 
# It should return a #hash 
# listing each #substring (case insensitive) that was found in the original #string and 
# how many times it was found.
```
      > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

      > substrings("below", dictionary)

      => { "below" => 1, "low" => 1 }
```
def substrings (word, array)
    # make the #strings_array into an #array_of_string_arrays -> dictionary = [[below], [down]...]
    # select/map the all the string_array that matches with the #word_array (the given argument) by iteration maybe
    # return all the selected #string_array into words again 
    # and create a new hash with a (0) value starting point and count the similar words
    word = word.downcase
    hash_of_substrings = Hash.new(0) 
    array.each do |string|
        string = string.downcase
        if word.include?(string)
        hash_of_substrings[string] += 1  
        end
    end
    hash_of_substrings
end

# Simulated Tests:
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print substrings("below", dictionary)

dictionary = ["Below","below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print substrings("bElow", dictionary)
# should print: { "below" => 1, "low" => 1 }