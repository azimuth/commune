class ExpenseItem < ActiveRecord::Base
  belongs_to :expense_report
  belongs_to :expense_type
  validates_presence_of :expense_type
end
