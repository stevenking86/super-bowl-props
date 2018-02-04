class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.references :prop
      t.string :description
      t.boolean :correct
      t.timestamps null: false
    end
  end
end
