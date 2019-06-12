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
    str = ""
    if walk = @head
      str << walk.data
      while walk.next_node
        walk = walk.next_node
        str << " " + walk.data
      end
    end
    str
  end
end
