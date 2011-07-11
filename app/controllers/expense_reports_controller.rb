class ExpenseReportsController < ApplicationController
  respond_to :html
  
  def new
    @expense_report = ExpenseReport.new
    respond_with(@expense_report)
  end
  
end