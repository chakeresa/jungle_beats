require './test/test_helper'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("plop")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_data_from_init
    assert_equal "plop", @node.data
  end

  def test_next_node_inits_to_nil
    assert_nil @node.next_node
  end
end
