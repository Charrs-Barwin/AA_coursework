def partition(arr,n)
    result = [[],[]]
    arr.each{|num|num<n ? result[0]<<num : result[1]<<num}
    result
end

def merge(h1,h2)
    h3 = {}
    [h1,h2].each {|h|h.each_key{|k|h3[k]=h[k]}}
    h3
end

def censor(sentence,nonos)
    sentence.split.each{|w| w.gsub!(/[aeiouAEIOU]/, '*') if nonos.include?(w.downcase)}.join(" ")
end

def power_of_two?(num)
    while true do
        return true if num <= 2
        return false if ! num.even?
        num/=2
    end

end
