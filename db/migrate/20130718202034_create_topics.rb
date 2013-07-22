class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :string
      t.string :topic
      t.string :string

      t.timestamps
    end
  end
end
