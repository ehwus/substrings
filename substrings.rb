# String, Array -> Dictionary
# Returns count of each word in string that matches
# an entry in the dictionary array in a hash.
def substrings(words, valid_substrings)
  return_hash = Hash.new
  # iterate over words
  words.split(/[\s.,!?]/).each do |word|
    if valid_substrings.include? word
      return_hash[word] = return_hash.fetch(word, 0) + 1
    end
  end
return_hash  
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# test - expect { "below" => 1, "low" => 1 }
p substrings("below", dictionary)
# test - expect { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary)