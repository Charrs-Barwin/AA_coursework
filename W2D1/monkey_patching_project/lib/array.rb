# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  #Part 1
    def span
        return nil if self.empty?
        return self.max - self.min if self.all?{|e|e.is_a?(Integer)}
    end
    
    def average
        return nil if self.empty?
        return self.sum / self.size if self.all?{|e|e.is_a?(Integer)}
    end
    
    def median
        
    end
    
    def counts
        
    end
  #Part 2
    def my_count
        
    end
    
    def my_index
        
    end
    
    def my_uniq
        
    end
    
    def my_transpose
        
    end
    
end
