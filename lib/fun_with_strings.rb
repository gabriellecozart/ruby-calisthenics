module FunWithStrings
  def palindrome?
    self.downcase!
    self.gsub!(/\W/, '')
    return true if self.reverse == self
  end
  def count_words
    self.downcase!
    self.gsub!(/\W/, ' ')
    words = self.split(' ')
    count = Hash.new(0)
    words.each { |word| count[word] += 1 }
    return count
    
  end
  def anagram_groups
    words = self.downcase.split(' ')
    hash = Hash.new([])
    words.each { |word|
      sortedWord = word.chars.sort.join
      hash[sortedWord] += [word]
    }
    result = []
    hash.each { |k, v|
      result += [v]
    }
    return result
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
