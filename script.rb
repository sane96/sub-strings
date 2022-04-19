def substrings(string, dictionary)
    string_counter = {};
    dictionary.each do |substring|
        counter = string.downcase.scan(substring).count #scan(/(?=#{substr})/)
        string_counter[substring] = counter unless counter == 0 
    end

    return string_counter
end  

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "jabuka"]

pp substrings("Howdy partner, sit down! How's it going?", dictionary)

