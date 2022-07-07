def substrings (sentence , array_of_strings)
    result=Hash.new(0)
    array_of_strings.each do |word|
        result[word] = sentence.downcase.scan(/(?=#{word})/).count if sentence.downcase.include?(word)
    end
    
    

    puts result
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
