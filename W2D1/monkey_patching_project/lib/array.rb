# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    #Part 1
    def is_integers?
        self.all?{|e|e.is_a?(Integer)}
    end

    def span
        return nil if self.empty?
        return self.max - self.min if is_integers?
    end
    
    def average
        return nil if self.empty?
        return self.sum.to_f / self.size if is_integers?
    end
    
    def median
        return nil if self.empty?
        n = self.size
        arr = self.sort
        return n.even? ? arr[(n/2)-1..n/2].sum/2.0 : arr[n/2] if is_integers?
    end
    
    def counts
        hash = {}
        self.each{|e|hash[e]=self.count(e)}
        hash
    end
    
  #Part 2
    def my_count(element)
        count = 0
        self.each{|e|count += 1 if e == element}
        count
    end
    
    def my_index(element)
        self.each.with_index{|e,i| return i if e == element}
        nil
    end
    
    def my_uniq
        arr = [self.first]
        self[1..-1].each{|e| arr<<e if !arr.include?(e)}
        arr
    end
    
    def my_transpose
        arr = []
        n = self.size
        n.times do |i1|
            a = []
            n.times{|i2| a<< self[i2][i1] }
            arr<<a
        end
        arr
    end
    
end
