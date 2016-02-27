require_relative 'stack'

class Queue
	def initialize
		@stack1 = Stack.new
		@stack2 = Stack.new
	end

	def enqueue(data)
		@stack1.push(data)
	end

	def dequeue
		(@stack1.size-1).times do 
			@stack2.push(@stack1.pop)
		end
		temp = @stack1.pop
		@stack2.size.times do
			@stack1.push(@stack2.pop)
		end
		return temp
	end
end
