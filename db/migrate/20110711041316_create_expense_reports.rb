class CreateExpenseReports < ActiveRecord::Migration
  def self.up
    create_table :expense_reports do |t|
      t.date :receipt_date
      t.date :entry_date
      t.integer :vendor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :expense_reports
  end
end
