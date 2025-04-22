class CreateDynamicColumns < ActiveRecord::Migration[8.0]
  def change
    create_table :dynamic_columns do |t|
      t.string :column_type
      t.boolean :required
      t.string :default_value
      t.references :dynamic_form, null: false, foreign_key: true

      t.timestamps
    end
  end
end
