dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substring(string, dictionary)
    result = Hash.new(0)  #creating empty hash
    lowered_string = string.downcase! #converting strings to downcase
    dictionary.each do |word|    #loop through words in the dictionary
        matches = lowered_string.scan(word).length   #scan string for occurences
        result[word]= matches unless matches == 0   #add values to hash
    end
    return result
end