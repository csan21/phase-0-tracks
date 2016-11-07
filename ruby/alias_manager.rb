##### Recovered what ever code I had from repl.
##### Might have accidentally deleted or cloned over
##### my local phase 0 tracks where my alias manager was
##### overwritten or just lost. Regardless I was unable to complete
##### even previously. I had trouble with combining the names
##### with the vowels and consonants changes,
##### and having a *working* method that would 
##### iterate through all the inputs.


vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"

def next_vowel(letter)
  letter = vowels[vowels.index(letter)+1]
end

def next_consonant(letter)
  letter = consonants[consonants.index(letter)+1]
end

def name_swap(name)
  name.split(' ').reverse.join(' ')
end