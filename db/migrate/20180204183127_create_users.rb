class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, unique: true
      t.string :trash_talk

      t.timestamps null: false
    end
  end
end
