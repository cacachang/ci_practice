class CreateDynamicValues < ActiveRecord::Migration[8.0]
  def change
    create_table :dynamic_values do |t|
      t.references :dynamic_form, null: false, foreign_key: true
      t.json :field_value

      t.timestamps
    end
  end
end
