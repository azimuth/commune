class ExpenseReport < ActiveRecord::Base
  belongs_to :vendor
  has_many :expense_items
  validates_presence_of :vendor
end
