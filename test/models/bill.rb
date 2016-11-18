require_relative '../test_helper'

class TestBill < Minitest::Test
  def setup
    @bill = Bill.new
  end

  def test_title_after_create
    assert_equal 'No Title', @bill.title
  end

  def test_cost_after_create
    assert_equal 0.0, @bill.cost
  end
end
