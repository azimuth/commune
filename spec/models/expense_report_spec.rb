require 'spec_helper'

describe ExpenseReport do
  before :each do
    @vendor = mock_model(Vendor)
    @vendor.stub(:name).and_return("Foo Bar, Inc")
    @vendor.stub(:id).and_return(1)
    
    @et = mock_model(ExpenseType)
    @et.stub(:name).and_return("Food")
     
    @ei = mock_model(ExpenseItem)
    @ei.stub(:expense_type).and_return(@et)
    @ei.stub(:amount).and_return(12.99)
    @ei.stub(:id).and_return(1)
  end
  
  it "has a receipt_date" do
    ExpenseReport.new.should respond_to :receipt_date
  end
  
  it "is not valid without a vendor" do
    e = ExpenseReport.new
    
    e.should respond_to :vendor
    e.should_not be_valid
  end
  
  it "is valid with a vendor" do
    e = ExpenseReport.new
    e.vendor = @vendor
    e.should be_valid
  end
  
  it "has a note field" do
    e = ExpenseReport.new
    e.should respond_to :note
  end
  
  it "has expense_items" do
    e = ExpenseReport.new
    e.expense_items << @ei
    e.expense_items.should be_kind_of(Array)
    e.expense_items.first.expense_type.name.should eq "Food"
  end
end
