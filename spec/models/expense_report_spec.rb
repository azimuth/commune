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
    
    it "has a food amount" do
      ExpenseReport.new.should respond_to :food_amount
    end
    
    it "has an alcohol amount" do
      ExpenseReport.new.should respond_to :alcohol_amount
    end
    
    it "has an other amount" do
      ExpenseReport.new.should respond_to :other_amount
    end
  end
end
