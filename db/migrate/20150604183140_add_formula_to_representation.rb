class AddFormulaToRepresentation < ActiveRecord::Migration
  def change
    add_column :representations, :formula, :string
  end
end
