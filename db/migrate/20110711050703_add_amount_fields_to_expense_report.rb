class AddAmountFieldsToExpenseReport < ActiveRecord::Migration
  def self.up
    add_column :expense_reports, :food_amount, :float, :default => 0.00, :null => false
    add_column :expense_reports, :alcohol_amount, :float, :default => 0.00, :null => false
    add_column :expense_reports, :other_amount, :float, :default => 0.00, :null => false
  end

  def self.down
    remove_column :expense_reports, :food_amount
    remove_column :expense_reports, :alcohol_amount
    remove_column :expense_reports, :other_amount
  end
end
