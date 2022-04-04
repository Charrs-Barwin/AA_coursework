def select_even_nums(nums)
    nums.select {|n|n.even?}
end

def reject_puppies(dogs)
    dogs.reject {|d|d["age"]<=2}
end

def count_positive_subarrays(arr)
    arr.count {|a|a.sum>0}
end

def aba_translate(word)
    output = ""
    word.each_char do |c|
        output << c
        if "aeiou".include?(c)
            output << "b"
            output << c
        end
    end
    output
end

def aba_array(words)
    words.map {|w|aba_translate(w)}
end
