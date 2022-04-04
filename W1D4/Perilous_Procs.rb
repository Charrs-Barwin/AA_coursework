 
def some?(arr,&b)
    #arr.any?{|e|b.call(e)}
    arr.each{|e|return true if b.call(e)}
    false
end

def exactly?(arr,n,&b)
    #n == arr.count{|e|b.call(e)}
    count = 0
    arr.each{|e|count +=1 if b.call(e)}
    count == n
end

def filter_out(arr,&b)
    #arr.reject{|e|b.call(e)}
    result = []
    arr.each{|e|result<<e if !b.call(e)}
    result
end

def at_least?(arr,n,&b)
    #n >= arr.count{|e|b.call(e)}
    count = 0
    arr.each{|e|count +=1 if b.call(e)}
    count >= n    
end
 
def every?(arr,&b)
    #arr.all?{|e|b.call(e)}
    arr.each{|e|return false if !b.call(e)}
    true
end

def at_most?(arr,n,&b)
    #n <= arr.count{|e|b.call(e)}
    count = 0
    arr.each{|e|count +=1 if b.call(e)}
    count <= n  
end

def first_index(arr,&b)
    arr.each.with_index{|e,i|return i if b.call(e)}
    nil
end



def xnor_select(arr,p1,p2)
    arr.reject{|e|p1.call(e)^p2.call(e)}
end

def filter_out!(arr,&b)
    arr.select!{|e|!b.call(e)}
end

def multi_map(arr,n=1,&b)
    arr.size.times{|i|n.times{arr[i]=b.call(arr[i])}}
    arr
end

def proctition(arr,&b)
    arr.select(&b)+arr.reject(&b)
end



def selected_map!(arr,p1,p2)
    arr.map!{|e| p1.call(e)? p2.call(e) : e }
    nil
end

def chain_map(n,procs)
    procs.inject(n){|acc,p|p.call(acc)}
end

def proc_suffix(sentence,h)
    sentence.split.map{|w| h.each_key.inject(w){|acc,k| k.call(w)? acc+h[k] : acc } }.join(" ")
end

def proctition_platinum(arr,*procs)
    h = {}
    procs.each_with_index do |p,i|
        input = arr.select(&p)
        h[i+1] = input
        arr -= input
    end
    h
end

def procipher(sentence,h)
    sentence.split.map{|w| h.each_key.inject(w){|acc,k| k.call(w)? h[k].call(acc) : acc } }.join(" ")
end

def picky_procipher(sentence,h)
    sentence.split.map{|w| h.keys.any?{|k|k.call(w)}? h[h.keys.select{|k|k.call(w)}.first].call(w) : w }.join(" ")
end
