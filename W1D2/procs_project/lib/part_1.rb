def my_map(arr,&b)
    result = []
    arr.each{|e|result<<b.call(e)}
    result
end

def my_select(arr,&b)
    arr.reject{|e|!b.call(e)}
end

def my_count(arr,&b)
    count = 0
    arr.each{|e|count += 1 if b.call(e)}
    count
end

def my_any?(arr,&b)
    arr.each{|e|return true if b.call(e)}
    false
end

def my_all?(arr,&b)
    arr.each{|e|return false if !b.call(e)}
    true
end

def my_none?(arr,&b)
    arr.each{|e|return false if b.call(e)}
    true
end
