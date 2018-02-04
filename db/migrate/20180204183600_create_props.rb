class CreateProps < ActiveRecord::Migration[5.0]
  def change
    create_table :props do |t|
      t.string :description
      t.timestamps null: false
    end
  end
end
