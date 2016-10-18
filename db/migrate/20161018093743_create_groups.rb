class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.references :murabbi, index: true, references: :users
      t.date :start_at
      t.date :end_at
      t.string :region
      t.text :note

      t.timestamps
    end
  end
end
