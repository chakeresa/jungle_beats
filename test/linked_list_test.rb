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

  def test_count_inits_to_zero
    assert_equal 0, @list.count
  end

  def test_count_is_1_after_adding_first_node
    data = "doop"
    @list.append(data)

    assert_equal 1, @list.count
  end

  def test_to_string_returns_empty_string_for_empty_list
    assert_equal "", @list.to_string
  end

  def test_to_string_returns_data_of_first_node_when_1_node
    data = "doop"
    @list.append(data)

    assert_equal data, @list.to_string
  end
end
