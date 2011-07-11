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
end