require 'spec_helper'

describe Vendor do
  before :each do
    @v = Vendor.new(:name => "Foo, Inc")
  end
  
  it "has a name" do
    @v.name.should eq "Foo, Inc"
  end
  
  it "has_many expense_reports" do
    ep = mock_model(ExpenseReport)
    @v.expense_reports << ep
    @v.should be_valid
    @v.expense_reports.should eq [ep]
  end
  
  it "doesn't have to have any expense_reports" do
    vv = Vendor.create(:name => "Foo, Inc too")
    vv.should be_valid
    vv.expense_reports.should eq []
  end
end
