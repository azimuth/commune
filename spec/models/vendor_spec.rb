require 'spec_helper'

describe Vendor do
  before :each do
    @v = Vendor.new(:name => "Foo, Inc")
  end
  
  it "has a name" do
    @v.name.should eq "Foo, Inc"
  end
  
  it "has an array at #expense_reports" do
    @v.expense_reports.should eq []
  end
  
  it "has_many expense_reports" do
    ep = mock_model(ExpenseReport)
    @v.expense_reports << ep
    @v.expense_reports.should eq [ep]
  end
end
