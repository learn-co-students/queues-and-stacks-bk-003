class Stack

	def initialize(list=[])
		@list = list
	end

	def push(data)
		@list.insert(-1, data)
	end

	def pop
		@list.delete_at(-1)
	end

	def size
		@list.length
	end
end
