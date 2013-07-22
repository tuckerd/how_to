class RemoveStringFromTopics < ActiveRecord::Migration
  def up
    remove_column :topics, :string
  end

  def down
    add_column :topics, :string, :string
  end
end
