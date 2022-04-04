
def zip(*arrs)
    result = []
    arrs[0].size.times do |i|
        arr = []
        arrs.each{|a|arr<<a[i]}
        result<<arr
    end
    result
end

def prizz_proc(arr,p1,p2)
    arr.select{|e|[p1.call(e),p2.call(e)].one?}
end

def zany_zip(*arrs)
    result = []
    size = arrs.inject{|acc,a|a.size>acc.size ? a : acc}.size
    size.times do |i|
        arr = []
        arrs.each{|a|arr<<a[i]}
        result<<arr
    end
    result
end

def maximum(arr,&b)
    arr.inject{|acc,e|b.call(e)>=b.call(acc) ? e : acc}
end

def my_group_by(arr,&b)
    h = Hash.new{|h,k|h[k]=[]}
    arr.each{|e|h[b.call(e)]<<e}
    h
end

def max_tie_breaker(arr,p,&b)
    arr.inject do |acc,e|
        if b.call(e)==b.call(acc)
            if p.call(e)==p.call(acc)
                acc
            else
                p.call(e)>p.call(acc) ? e : acc
            end
        else
            b.call(e)>b.call(acc) ? e : acc
        end
    end
end

def silly_syllables(sentence)
    sentence.split.map{|w|snip(w)}.join(" ")
end

def snip(word)
    return word if word.count("aeiou")<2
    word[word.index(/[aeiou]/)..word.rindex(/[aeiou]/)]
end