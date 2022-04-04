
def reverser(str,&b)
    b.call(str.reverse)
end

def word_changer(sentence,&b)
    sentence.split.map(&b).join(" ")
end

def greater_proc_value(n,p1,p2)
    [p1.call(n),p2.call(n)].max
end

def and_selector(arr,p1,p2)
    arr.select{|e|p1.call(e)&&p2.call(e)}
end

def alternating_mapper(arr,p1,p2)
    arr.map.with_index{|e,i|i.even? ? p1.call(e) : p2.call(e)}
end
