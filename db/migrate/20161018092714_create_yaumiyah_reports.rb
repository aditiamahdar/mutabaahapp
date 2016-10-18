class CreateYaumiyahReports < ActiveRecord::Migration[5.0]
  def change
    create_table :yaumiyah_reports do |t|
      t.references :user, foreign_key: true, index: true
      t.references :yaumiyah, foreign_key: true, index: true
      t.date :date
      t.integer :amount

      t.timestamps
    end
  end
end
