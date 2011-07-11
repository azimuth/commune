require 'spec_helper'

describe ExpenseReportsController do
  before :each do
    @date = Date.today
    @vendor = mock_model(Vendor)
    @vendor.stub(:name).and_return("Foo Bar, Inc")
    @vendor.stub(:id).and_return(1)
    Vendor.stub(:find).and_return(@vendor)
  end
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
      post :create, :expense_report => { 
        :receipt_date => @date,
        :entry_date => @date,
        :vendor_id => @vendor.id,
      }
      ExpenseReport.first.receipt_date.should eq @date
    end
  end
  
  describe "GET show" do
    before :each do
      @er = ExpenseReport.create(:receipt_date => Date.today, :vendor => @vendor)
      get(:show, :id => @er.id)
    end
    
    it "assigns @expense_report" do
      assigns[:expense_report].should eq @er
    end
    
    it "renders the show template" do
      response.should render_template("show")
    end
  end
end