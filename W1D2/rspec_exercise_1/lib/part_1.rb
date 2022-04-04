def average(n1,n2)
    (n1+n2)/2.0
end

def average_array(arr)
    arr.sum/arr.size.to_f
end

def repeat(str,n)
    result = ""
    n.times{result<<str}
    result
end

def yell(str)
    str.upcase + '!'
end

def alternating_case(sentence)
    sentence.split.map.with_index{|w,i| i.even? ? w.upcase : w.downcase}.join(" ")
end
