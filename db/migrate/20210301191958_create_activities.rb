class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :title
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
