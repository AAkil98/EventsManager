class CreateParticipations < ActiveRecord::Migration[7.1]
  def change
    create_table :participations do |t|
      t.string :status
      t.integer :capacity
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
