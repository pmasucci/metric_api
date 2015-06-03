class CreateLogEntries < ActiveRecord::Migration
  def change
    enable_extension 'citext'

    create_table :log_entries do |t|
      t.references :log, index: true, foreign_key: true
      t.jsonb :data, null: false

      t.timestamps null: false

    end
    add_index  :log_entries, :data, using: :gin
  end
end
