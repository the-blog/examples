require_relative '../test_helper'

class TestTransportBill < Minitest::Test
  def setup
    @bill = TransportBill.new
  end

  def test_title_after_create
    assert_equal 'Transport bill', @bill.title
  end

  def test_cost_after_create
    assert_equal 0.0, @bill.cost
  end
end


