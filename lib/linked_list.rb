class LinkedList
  attr_reader :head

  def append(data)
    @head = Node.new(data)
    data
  end
end
