class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :position
      t.text :content
      t.references :topic

      t.timestamps
    end
    add_index :steps, :topic_id
  end
end
