class ExpenseType < ActiveRecord::Base
  has_many :expense_items
end
