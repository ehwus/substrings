# String, Array -> Dictionary
# Returns count of each word in string that matches
# an entry in the dictionary array in a hash.
def substrings(words, valid_substrings)
  return_hash = Hash.new
  words.downcase.split(/[\s.,!?]/).each do |string_word|
    valid_substrings.each do |valid_word|
      if string_word.include? valid_word
        return_hash[valid_word] = return_hash.fetch(valid_word, 0) + 1
      end
    end
  end
return_hash  
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# test - expect { "below" => 1, "low" => 1 }
p substrings("below", dictionary)
# test - expect { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary)