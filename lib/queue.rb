require_relative 'stack'

class Queue

	def initialize
    @stack1 = Stack.new
    @stack2 = Stack.new
  end

  def enqueue num
  	@stack1.push num
  end

  def dequeue
    @stack1.size.times do |i|
      element = @stack1.pop
      @stack2.push element
    end
    result = @stack2.pop
    @stack2.size.times do |i|
    	element = @stack2.pop
    	@stack1.push element
    end
    result
  end



end
