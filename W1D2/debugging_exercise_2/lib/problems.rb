# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    (2..num).select {|i| num%i==0 && is_prime?(i)}.max
end

def is_prime?(num)
    return false if num < 2 || (2...num).any? {|i|num%i==0}
    true
end

def unique_chars?(word)
    word.split("").none? {|c|word.count(c)>1}
end

def dupe_indices(arr)
    hash = Hash.new(){|h,k|h[k]=[]}
    arr.each_with_index {|e,i| hash[e]<<i if arr.count(e)>1}
    hash
end

def ana_array(a1,a2)
    return false if a1.size != a2.size
    a1.all? { |e| a1.count(e)==a2.count(e) }
end
