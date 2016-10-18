class CreateMuwashafatUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :muwashafat_users do |t|
      t.references :muwashafat, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
      t.boolean :status
      t.text :note

      t.timestamps
    end
  end
end
