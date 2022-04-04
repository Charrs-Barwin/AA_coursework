
def strange_sums(nums)
    count = 0
    nums.each{|n|count += 1 if n>0 && nums.include?(-n)}
    count
end

def pair_product(nums,p)
    nums.each_with_index{ |n1,i| nums[i+1..-1].each {|n2|return true if n1*n2==p} }
    false
end

def rampant_repeats(str,h)
    result = ""
    multiplier = Proc.new {|c| h.has_key?(c) ? h[c] : 1}
    str.each_char{|c|result<<c*multiplier.call(c)}
    result
end

def perfect_square(num)
    (1..num).any?{|n|n*n==num}
end


def anti_prime?(num)
    d = divisor_count(num)
    (1...num).none?{|n|divisor_count(n)>d}
end

def divisor_count(num)
    (1..num).count{|n|num%n==0}
end

def matrix_addition(m1,m2)
    m1.map.with_index{ |e,i1| e.map.with_index {|n,i2| n + m2[i1][i2] } }
end

def mutual_factors(*nums)
    divisors(nums[0]).select{|d| nums.all?{|n| divisors(n).include?(d) }}
end

def divisors(num)
    (1..num).select{|n|num%n==0}
end

def tribonacci_number(n)
    return 1 if n < 3
    trib = [0,1,1]
    (3..n).each{|num|fib<<fib[-1]+fib[-2]+fib[-3]}
    trib[n]
end


def matrix_addition_reloaded(*matrices)
    sum_m = matrices[0].map{|el| el.dup}
    return nil if matrices[1..-1].any?{|m|m.size != sum_m.size || m[0].size != sum_m[0].size}
    sum_m.each_with_index { |a1,i1| a1.each_with_index {|n,i2| matrices[1..-1].each{|m2|sum_m[i1][i2]+=m2[i1][i2]} } }
end

def squarocol?(arr)
    arr.any?{|a|a.uniq.count==1}||(0..arr.size-1).any?{|n|arr.all?{|a|a[n]==arr[0][n]}}? true : false
end

def squaragonal?(arr)
    a1=[]
    a2=[]
    arr.each_with_index do |a,i|
        a1<<a[i]
        a2<<a[-(i+1)]
    end
    [a1,a2].any?{|a|a.uniq.count == 1}
end

def pascals_triangle(num)
    result = [[1]]
    (2..num).each_with_index do |n,i|
        arr = []
        n.times{|i2| arr<< (i2>0? result[i][i2-1] : 0) + result[i][i2].to_i }
        result<<arr
    end
    result
end



def mersenne_prime(num)
    count = 0
    2.step do |i|
        n = (2**i)-1
        if is_prime?(n)
            count += 1
            return n if count==num
        end
    end
end

def is_prime?(num)
    (2..num/2).none?{|n|num%n==0}
end

def triangular_word?(word)
    alf = "0abcdefghijklmnopqrstuvwxyz"
    num = word.chars.map{|c|alf.index(c)}.sum
    (1..num).any?{|n|(n*(n+1))/2 == num}
end

def consecutive_collapse(nums)
    nums = collapse(nums) while nums != collapse(nums)
    nums
end

def collapse(nums)
    nums[0...-1].each_with_index{|n,i| return nums[0...i]+nums[i+2..-1] if [1,-1].include?(n-nums[i+1]) }
    nums
end

def pretentious_primes(arr,mod)
    arr.map{|n|nearest_prime(n,mod)}
end

def nearest_prime(num,mod)
    if mod < 0 # is negetive
        primes = (2...num).select{|n|is_prime?(n)}
        #return primes.size >= -mod? primes[mod] : nil
        if primes.size >= -mod
            return primes[mod]
        else
            return nil
        end
    else # if mod is positive
        primes = []
        (num+1).step do |i|
            if is_prime?(i)
                primes<<i
                return primes.last if primes.size == mod
            end
        end
    end
end
