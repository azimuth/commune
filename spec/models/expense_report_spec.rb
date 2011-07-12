require 'spec_helper'

describe ExpenseReport do
  before :each do
    @vendor = mock_model(Vendor)
    @vendor.stub(:name).and_return("Foo Bar, Inc")
    @vendor.stub(:id).and_return(1)
  end
  
  context "new" do
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
    
  end
end
