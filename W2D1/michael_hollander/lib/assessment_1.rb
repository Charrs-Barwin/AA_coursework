# Define your methods here.
def my_map!(arr,&b)
    arr.size.times{|i| arr[i]= b.call(arr[i]) }
end

def two?(arr,&b)
    arr.count(&b) == 2
end

def nor_select(arr,p1,p2)
    arr.select{|e|!(p1.call(e)||p2.call(e))}
end

def array_of_hash_sum(hashes)
    sum = 0
    hashes.each{|h|sum += h.each_value.sum}
    sum
end

def slangify(sentence)
    sentence.split.map{|w|w.sub(/[a,e,i,o,u]/,'')}.join(" ")
end

def char_counter(str,*letters)
    hash = {}
    letters = str.chars if letters.empty?
    letters.each{|c|hash[c]=str.count(c)}
    hash
end
