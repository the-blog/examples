require_relative '../test_helper'

class TestBill < Minitest::Test
  include SharedBillExamples

  def setup
    @bill = Bill.new
  end

  def test_title_after_create
    assert_equal 'No Title', @bill.title
  end
end
