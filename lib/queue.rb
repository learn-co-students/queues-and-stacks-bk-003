require_relative 'stack'

class Queue

	attr_accessor :stack1, :stack2

	def initialize
		@stack1 = Stack.new
		@stack2 = Stack.new
	end

	def enqueue(item)
		stack1.push(item)
	end

	def dequeue
		stack1.size.times { |i| stack2.push(stack1.pop) }
		elem = stack2.pop
		stack2.size.times { |i| stack1.push(stack2.pop) }
		elem
	end

end
