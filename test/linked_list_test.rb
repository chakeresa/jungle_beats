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

  def test_it_can_append_a_second_node
    data_1 = "boots"
    @list.append(data_1)

    data_2 = "cats"

    assert_equal data_2, @list.append(data_2)
    assert_equal data_2, @list.head.next_node.data
    assert_nil @list.head.next_node.next_node
  end

  def test_it_can_append_a_third_node
    data_1 = "boots"
    @list.append(data_1)

    data_2 = "cats"
    @list.append(data_2)

    data_3 = "deep"

    assert_equal data_3, @list.append(data_3)
    assert_equal data_3, @list.head.next_node.next_node.data
    assert_nil @list.head.next_node.next_node.next_node
  end

  def test_count_inits_to_zero
    assert_equal 0, @list.count
  end

  def test_count_is_1_after_adding_first_node
    data = "doop"
    @list.append(data)

    assert_equal 1, @list.count
  end

  def test_count_increments_when_adding_more_nodes
    data_1 = "boots"
    @list.append(data_1)
    assert_equal 1, @list.count

    data_2 = "cats"
    @list.append(data_2)
    assert_equal 2, @list.count

    data_3 = "deep"
    @list.append(data_3)
    assert_equal 3, @list.count
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
