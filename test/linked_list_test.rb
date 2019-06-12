require './test/test_helper'

class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_it_inits_with_nil_head
    assert_nil @list.head
  end

  def test_it_can_append_the_first_node
    data = "doop"
    assert_equal data, @list.append(data)
    assert_equal data, @list.head.data
    assert_nil @list.head.next_node
  end
end
