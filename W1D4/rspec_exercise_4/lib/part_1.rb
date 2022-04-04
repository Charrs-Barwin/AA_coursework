def my_reject(arr,&b)
    arr.select{|e|!b.call(e)}
end

def my_one?(arr,&b)
    arr.count{|e|b.call(e)} == 1
end

def hash_select(h,&b)
    h.reject{|k,v|!b.call(k,v)}
end

def xor_select(arr,p1,p2)
    arr.select{|e|[p1,p2].one?{|p|p.call(e)}}
end

def proc_count(n,arr)
    arr.count{|e|e.call(n)}
end
