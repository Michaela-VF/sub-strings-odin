
def substrings(text, dictionary)
    hash_of_substrings =  Hash.new(0)
    text = text.downcase
    dictionary.each do |string|
        string = string.downcase
        matches = text.scan(string) # how many times #string from #dictionary is present in #text (as a subsequence of characters)
        hash_of_substrings[string] += matches.length if matches.length > 0
    end
    hash_of_substrings
end
