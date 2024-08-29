class AddBookToParticipations < ActiveRecord::Migration[7.1]
  def change
    add_column :participations, :booked, :boolean
  end
end
