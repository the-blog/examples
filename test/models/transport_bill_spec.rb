require_relative '../test_helper'

class TestTransportBill < Minitest::Test
  include SharedBillExamples

  def setup
    @bill = TransportBill.new
  end

  def test_title_after_create
    assert_equal 'Transport bill', @bill.title
  end
end
