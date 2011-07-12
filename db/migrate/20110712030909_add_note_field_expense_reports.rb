class AddNoteFieldExpenseReports < ActiveRecord::Migration
  def self.up
    add_column :expense_reports, :note, :text, :null => true
  end

  def self.down
    remove_column :expense_reports, :note
  end
end
