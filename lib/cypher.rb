class Cypher
  def self.encrypt_letter(letter, permutation_level)
    return letter if letter.match(/\W/) || letter.match(/\d/) # <-- guard clause to handle an exception
    letters = ("A".."Z").to_a
    letter_index = letters.index(letter)
    return letters[letter_index - permutation_level]
  end

  def self.encrypt(sentence, permutation_level = 3)
    letters = sentence.split("")
    encrypted = letters.map { |letter| encrypt_letter(letter, permutation_level) }
    return encrypted.join
  end

  def self.decrypt(text)
    # try all permutation levels
    possibilities = (1..25).map { |i| encrypt(text, i) }
    return possibilities # return them all in an array
  end
end