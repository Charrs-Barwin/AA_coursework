def hipsterfy(word)
    word.reverse.sub(/[aeiou]/, '').reverse
end

def vowel_counts(str)
    hash = Hash.new(0)
    str.downcase.each_char{ |c| hash[c]+=1 if "aeiou".include?(c)}
    hash
end

def caesar_cipher(str,n)
    alph = "abcdefghijklmnopqrstuvwxyz"
    str.split("").map{ |c| alph.include?(c)? alph[(alph.index(c)+n)%26] : c}.join("")
end
