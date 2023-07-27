require_relative 'my_enum'

class MyList
    attr_accessor = :list 
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each
    @list.each { |item| yield item }
  end
end
