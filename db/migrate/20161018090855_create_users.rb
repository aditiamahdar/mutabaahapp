class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username, index: true
      t.text :password, index: true
      t.string :email, index: true
      t.string :phone
      t.date :birthdate
      t.text :bio
      t.string :url
      t.integer :level

      t.timestamps
    end
  end
end
