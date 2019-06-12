class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if walk = @head
      while walk.next_node
        walk = walk.next_node
      end
      walk.next_node = Node.new(data)
    else
      @head = Node.new(data)
    end
    data
  end

  def count
    if @head
      1 # TO DO: make smart
    else
      0
    end
  end

  def to_string
    if @head
      @head.data # TO DO: make smart
    else
      ""
    end
  end
end
