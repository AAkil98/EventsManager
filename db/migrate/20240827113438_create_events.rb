class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :overview
      t.date :start
      t.date :end
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
