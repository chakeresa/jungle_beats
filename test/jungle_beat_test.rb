require './test/test_helper'

class JungleBeatTest < Minitest::Test
  def setup
    @jb = JungleBeat.new
  end

  def test_it_exists
    assert_instance_of JungleBeat, @jb
  end

  def test_it_inits_with_an_empty_linked_list
    assert_instance_of LinkedList, @jb.list
    assert_nil @jb.list.head
  end

  def test_it_can_append_multiple_nodes_at_once
    assert_equal "deep doo ditt", @jb.append("deep doo ditt")
    assert_equal "deep", @jb.list.head.data
    assert_equal "doo", @jb.list.head.next_node.data

    # assert_equal "woo hoo shu", @jb.append("woo hoo shu")
    # assert_equal 6, @jb.count
    # assert_equal "deep doo ditt woo hoo shu", @jb.list.to_string
  end
end
