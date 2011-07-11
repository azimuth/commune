require 'spec_helper'

describe ExpenseReport do
  context "new" do
    it "has a receipt_date" do
      ExpenseReport.new.should respond_to :receipt_date
    end
    
    it "has a vendor" do
      ExpenseReport.new.should respond_to :vendor
      ExpenseReport.new.vendor.should be_nil
    end
  end
end
