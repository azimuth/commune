class CreateExpenseItems < ActiveRecord::Migration
  def self.up
    create_table :expense_items do |t|
      t.float :amount, :default => 0.00
      t.integer :expense_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :expense_items
  end
end
