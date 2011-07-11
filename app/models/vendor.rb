class Vendor < ActiveRecord::Base
  has_many :expense_reports
end
