module MyEnumerable
    def all?(&block)
        @list.each do |item|
            return false unless block.call(item)
        end
        true
    end
  
    def any?(&block)
      @list.each do |item|
        return true if block.call(item)
      end
      false
    end
  
    def filter(&block)
      result = []
      @list.each do |item|
        result << item if block.call(item)
      end
      result
    end
  end
  