class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.string :title
      t.string :description
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
