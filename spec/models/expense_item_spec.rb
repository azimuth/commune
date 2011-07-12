require 'spec_helper'

describe ExpenseItem do
  it "has an amount that is a float" do
    ExpenseItem.new.amount.should eq 0.0
  end
  
  it "must have an expense_type" do
    ExpenseItem.new.should_not be_valid
    
    e = mock_model(ExpenseType)
    e.stub(:name).and_return("Food")
    
    ExpenseItem.new(:expense_type => e).should be_valid
  end
end
