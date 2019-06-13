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

  def test_prepend_adds_a_new_node_at_the_head
    @list.append("plop")
    @list.append("suu")

    @list.prepend("dop")

    assert_equal "dop plop suu", @list.to_string
    assert_equal 3, @list.count
  end

  def test_insert_appends_when_index_is_greater_than_count
    @list.append("plop")
    @list.append("suu")

    @list.insert(5, "dop")

    assert_equal "plop suu dop", @list.to_string
  end

  def test_insert_can_add_the_first_node
    @list.insert(0, "plop")

    assert_equal "plop", @list.to_string
  end

  def test_insert_adds_a_node_at_the_specd_index_1
    @list.append("plop")
    @list.append("suu")
    @list.prepend("dop")

    @list.insert(1, "woo")

    assert_equal "dop woo plop suu", @list.to_string
    assert_equal 4, @list.count
  end

  def test_insert_adds_a_node_at_the_specd_index_2
    @list.append("beep")
    @list.append("plop")
    @list.append("suu")
    @list.prepend("dop")

    @list.insert(2, "woo")

    assert_equal "dop beep woo plop suu", @list.to_string
    assert_equal 5, @list.count
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

  def test_to_string_returns_data_of_all_nodes_sep_by_spaces
    data_1 = "boots"
    @list.append(data_1)

    data_2 = "cats"
    @list.append(data_2)

    data_3 = "deep"
    @list.append(data_3)

    assert_equal "#{data_1} #{data_2} #{data_3}", @list.to_string
  end

  def test_find_returns_a_string_of_data_at_index_and_for_desired_span
    @list.append("deep")
    @list.append("woo")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")

    assert_equal "deep", @list.find(0, 1)
    assert_equal "shi", @list.find(2, 1)
    assert_equal "woo shi shu", @list.find(1, 3)
    assert_equal "shu blop", @list.find(3, 2)
  end

  def test_find_returns_empty_string_if_index_oob
    @list.append("deep")
    @list.append("woo")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")

    assert_equal "", @list.find(-3, 1)
    assert_equal "", @list.find(7, 1)
    assert_equal "", @list.find(2, 4)
  end

  def test_includes_returns_true_if_in_list_or_false_if_not
    @list.append("deep")
    @list.append("woo")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")

    assert_equal true, @list.includes?("deep")
    assert_equal true, @list.includes?("woo")
    assert_equal true, @list.includes?("shi")
    assert_equal false, @list.includes?("dep")
  end
end
