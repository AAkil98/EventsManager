class AddModeToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :mode, :string
  end
end
