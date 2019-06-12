class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
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
