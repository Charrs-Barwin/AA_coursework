def palindrome?(str1)
    str2 = str1.split("").reverse.join
    str1 == str2
end

def substrings(str)
    result = []
    last_index = str.length-1
    (0..last_index).each { |i1| (i1..last_index).each{|i2|result<<str[i1..i2]} }
    result
end

def palindrome_substrings(str)
    substrings(str).select{|ss| ss.length>1 && palindrome?(ss)}
end
