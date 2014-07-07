class AddTitleToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :title, :string
  end
end
