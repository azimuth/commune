class ExpenseReport < ActiveRecord::Base
  belongs_to :vendor
  validates_presence_of :vendor
end
