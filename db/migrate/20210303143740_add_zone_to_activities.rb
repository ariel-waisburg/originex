class AddZoneToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :zone, :string
  end
end
