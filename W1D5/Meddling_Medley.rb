def duos(str)
    count = 0
    str[1..-1].each_char.with_index{|c,i|count +=1 if c == str[i]}
    count
end

def sentence_swap(sentence,h)
    sentence.split.map{|w| h.has_key?(w)? h[w] : w }.join(" ")
end

def hash_mapped(h,p,&b)
    result = {}
    h.each{|k,v|result[b.call(k)]=p.call(v)}
    result
end

def counted_characters(str)
    str.split("").select.with_index{|c,i|str.count(c)>2 && i == str.index(c)}
end

def triplet_true(str)
    str[1...-1].each_char.with_index{|c,i|return true if c == str[i] && c == str[i+2]}
    false
end

def energetic_encoding(str,h)
    h[' '] = ' '
    str.chars.map{|c|h.has_key?(c)? h[c] : '?'}.join
end

def uncompress(str)
    result = ""
    str.each_char.with_index{|c,i|str[i+1].to_i.times{result<<c}if i.even?}
    result
end



def conjunct_select(arr,*procs)
    arr.select{|e|procs.all?{|p|p.call(e)}}
end

def convert_pig_latin(sentence)
    sentence.split.map{|w|w.length>=3? pigword(w) : w}.join(" ")
end

def pigword(w)
    return w+'yay' if "aeiou".include?(w[0].downcase)
    word = w[w.index(/[aeiou]/)..-1]+w[0...w.index(/[aeiou]/)]+'ay'
    ('A'..'Z').include?(w[0])? word.capitalize! : word
end

def reverberate(sentence)
    sentence.split.map{|w|w.length>=3? reverbword(w) : w}.join(" ")
end

def reverbword(w)
    word = "aeiou".include?(w[-1].downcase)? w+w : w+w[w.rindex(/[aeiou]/)..-1]
    ('A'..'Z').include?(w[0])? word.capitalize : word
end

def disjunct_select(arr,*procs)
    arr.select{|e|procs.any?{|p|p.call(e)}}
end

def alternating_vowel(sentence)
    sentence.split.map.with_index{|w,i|i.even?? w.sub(/[aeiou]/,'') : w.reverse.sub(/[aeiou]/,'').reverse }.join(" ")
end

def silly_talk(sentence)
    sentence.split.map{|w|"aeiou".include?(w[-1].downcase)? w+w[-1] : silly_word(w)}.join(" ")
end

def silly_word(w)
    w.split("").map{ |c| "aeiou".include?(c)? c+'b'+c : c }.join
end

def compress(str)
    result = ""
    str.each_char.with_index do |c,i|
        next if c == str[i-1]
        count = 1
        result<<c
        while str[i+count] == c
            count += 1
        end
        result<< count.to_s if count > 1
    end
    result
end
