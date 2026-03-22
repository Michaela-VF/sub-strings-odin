
def substrings(text, dictionary)
    text = text.downcase
    
    dictionary.each_with_object(Hash.new(0)) do |string, h|
        # each_with_object is a cleaner version since we're trying to create a hash, and it automatically returns that hash!
        strings_count = text.scan(string.downcase).length
        h[string.downcase] += strings_count if strings_count.positive?
    end
    # so no need to return the new hash here, otherwise it raises an error!
end
