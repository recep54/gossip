class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
    	t.belongs_to :user
    	t.belongs_to :potin
      t.timestamps
    end
  end
end
