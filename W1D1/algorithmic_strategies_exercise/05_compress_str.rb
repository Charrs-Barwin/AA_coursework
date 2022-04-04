# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    str2 = ""
    str.each_char.with_index do |c,i|
        next if i>0 && c == str[i-1]
        count = 1
        while c == str[i+count] && i+count < str.length
            count+=1
        end
        str2 << count.to_s if count > 1
        str2 << c
    end
    str2
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
