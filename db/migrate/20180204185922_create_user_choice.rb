class CreateUserChoice < ActiveRecord::Migration[5.0]
  def change
    create_table :user_choices do |t|
      t.references :user
      t.references :choice
      t.timestamps null: false
    end
  end
end
