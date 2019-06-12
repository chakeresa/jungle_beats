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
    if walk = @head
      counter = 1
      while walk.next_node
        walk = walk.next_node
        counter +=1
      end
      counter
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
