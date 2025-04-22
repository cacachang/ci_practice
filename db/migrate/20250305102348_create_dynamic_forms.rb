class CreateDynamicForms < ActiveRecord::Migration[8.0]
  def change
    create_table :dynamic_forms do |t|
      t.string :name
      t.string :description
      t.json :fields

      t.timestamps
    end
  end
end
