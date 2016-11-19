module SharedBillExamples
  def test_cost_after_create
    assert_equal 0.0, @bill.cost
  end

  def test_created_at_after_create
    assert @bill.created_at != nil
  end
end
