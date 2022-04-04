# Define your methods here. 

def first_letter_vowel_count(sentence)
    sentence.split.count {|w| "AEIOUaeiou".include?(w[0])}
end

def count_true(arr,p)
    arr.count{|e|p.call(e)}
end

def procformation(arr,p1,p2,p3)
    arr.map{|e|p1.call(e) ? p2.call(e) : p3.call(e)}
end

def array_of_array_sum(arr)
    arr.flatten.sum
end

def selective_reverse(sentence)
    vowels = "AEIOUaeiou"
    sentence.split.map{|w| vowels.include?(w[0]) || vowels.include?(w[-1]) ? w : w.reverse }.join(" ")
end

def hash_missing_keys(h,*arr)
    arr.select{|a| ! h.has_key?(a) }
end


