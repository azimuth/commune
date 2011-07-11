require 'spec_helper'

describe ExpenseReportsController do
  describe "GET new" do
    it "assigns @expense_report" do
      get :new
      assigns[:expense_report].should be_kind_of(ExpenseReport)
    end
    
    it "renders the new template" do
      get :new
      response.should render_template("new")
    end
  end
  
  describe "POST create" do
    it "creates a new ExpenseReport from params" do
      date = Date.today
      vendor = mock_model(Vendor)
      vendor.stub(:name).and_return("Foo Bar, Inc")
      vendor.stub(:id).and_return(1)
      post :create, :expense_report => { 
        :receipt_date => date,
        :entry_date => date,
        :vendor_id => vendor.id,
        :food_amount => 12.99
      }
      ExpenseReport.first.food_amount.should eq(12.99)
    end
  end
end