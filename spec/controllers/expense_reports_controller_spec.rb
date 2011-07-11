require 'spec_helper'

describe ExpenseReportController do
  context "#new" do
    it "provides a new empty ExpenseReport" do
      get :new
      assigns[:expense_report].should be_kind_of(ExpenseReport)
    end
  end
end