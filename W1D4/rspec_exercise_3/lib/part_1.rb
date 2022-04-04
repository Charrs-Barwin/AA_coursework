def is_prime?(num)
    num>1 && (2...num).none?{|n|num%n==0}
end

def nth_prime(num)
    count = 0
    n = 2
    while count < num
        count += 1 if is_prime?(n)
        return n if count == num
        n += 1
    end
end

def prime_range(min,max)
    (min..max).select{|n|is_prime?(n)}
end
