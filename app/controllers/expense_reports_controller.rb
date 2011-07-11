class ExpenseReportsController < ApplicationController
  respond_to :html
  
  def new
    @expense_report = ExpenseReport.new
    respond_with(@expense_report)
  end
  
  def create
    @expense_report = ExpenseReport.create(params[:expense_report])
    respond_with(@expense_report)
  end
end