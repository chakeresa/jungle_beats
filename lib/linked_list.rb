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
      set_head(data)
    end
    data
  end

  def prepend(data)
    set_head(data, @head)
  end

  def insert(index, data)
    case
    when index > count
      append(data)
    when index == 0
      prepend(data)
    when index <= count
      insert_midway(index, data)
    end
  end

  def count
    counter = 0
    if walk = @head
      counter += 1
      while walk.next_node
        walk = walk.next_node
        counter +=1
      end
    end
    counter
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

  def find(starting_index, number_to_return)
    str = ""
    if starting_index + number_to_return <= count && starting_index >= 0
      walk, counter = walk_to_index(starting_index)
      str << walk.data
      while counter < starting_index + number_to_return - 1
        walk = walk.next_node
        counter += 1
        str << " " + walk.data
      end
    end
    str
  end

  def includes?(data)
    if walk = @head
      return true if walk.data == data
      while walk.next_node
        return true if walk.data == data
        walk = walk.next_node
      end
    end
    false
  end

  private

  def set_head(data, next_node = nil)
    @head = Node.new(data, next_node)
  end

  def insert_midway(index, data)
    walk = walk_to_index(index - 1)[0]
    walk.next_node = Node.new(data, walk.next_node)
  end

  def walk_to_index(starting_index)
    counter = 0
    walk = @head
    while counter < starting_index
      walk = walk.next_node
      counter += 1
    end
    [walk, counter]
  end
end
