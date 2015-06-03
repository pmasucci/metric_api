class CreateRepresentations < ActiveRecord::Migration
  def change
    create_table :representations do |t|
      t.references :log, index: true, foreign_key: true
      t.string :chart_type, null: false
      t.jsonb :structure, null: false

      t.timestamps null: false
    end
    add_index  :representations, :structure, using: :gin
  end
end
