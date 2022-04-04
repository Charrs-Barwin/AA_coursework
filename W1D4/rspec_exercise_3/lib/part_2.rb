
def element_count(arr)
h = Hash.new(0)
arr.each{|e| h[e]+=1}
h
end

def char_replace!(str,h)
    str.each_char.with_index{|c,i|str[i]=h[c]if h.has_key?(c)}
end

def product_inject(nums)
    nums.inject{ |acc,e| acc*e }
end
