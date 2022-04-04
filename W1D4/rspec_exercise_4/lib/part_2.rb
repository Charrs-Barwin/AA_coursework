def proper_factors(num)
    (1..num/2).select{|n|num%n==0}
end

def aliquot_sum(n)
    proper_factors(n).sum
end

def perfect_number?(n)
    n == aliquot_sum(n)
end

def ideal_numbers(num)
    arr = []
    n = 6
    while true
        arr<<n if perfect_number?(n)
        return arr if arr.size == num
        n += 1
    end
end
