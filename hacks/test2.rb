require 'pry'
# file opetations 



# returns an array of all index of char in word

def findindex(char, word)
  arr = []
  word.each_index do |x| 
    if char == word[x]
      arr << x
    end
    
  end
  arr 
end

 word = ['c', 'o', 'l', 'm', 'l']
 char = 'l'
 dummy = []
# puts findindex(char, word)

def update_placeholder(char, dummy, word)
dummy = []
dummy = '_' * word.length

len = findindex(char, word) 

if len.length > 0 
  len.each do |x|
    dummy[x] = word.fetch(x)
  end
end
 dummy
end


def random_index(word)
  i = 0
  arr = []
  len = word.length
  while i < len do 
    arr << (0...len).to_a.sample
    i += 1
  end
#  binding.pry
  if arr.length > 0
    return arr.uniq!
  elsif arr.length == 0
   random_index(word)
  end
end

def set_initial_word(word)
  dummy = []
  random = []
  dummy = '_' * word.length
  random = random_index(word)

  if random.length > 0
    random.each do |x|
      dummy[x] = word.fetch(x)
    end
  #elsif (random.length == 0)
  #  set_initial_word(word)
  end
 dummy
end

#puts random_index('hello')

puts set_initial_word(word)
# puts update_placeholder(char, dummy, word)