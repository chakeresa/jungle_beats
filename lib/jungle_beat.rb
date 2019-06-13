require './lib/linked_list'

class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data_elems = data.split
    data_elems.each do |data_element|
      @list.append(data_element)
    end
    data
  end

  def count
    @list.count
  end

  def play
    `say -r 500 #{@list.to_string}`
  end
end
