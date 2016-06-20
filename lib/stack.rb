require "pry"
class Stack
  attr_accessor :datastore, :size

  def initialize
    @datastore = []
    @size = 0
  end
  
  def push element
    @datastore.push(element)
    @size += 1
  end

  def pop 
    @size -= 1
    @datastore.pop 
  end

end



