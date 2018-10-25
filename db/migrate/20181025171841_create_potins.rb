class CreatePotins < ActiveRecord::Migration[5.2]
  def change
    create_table :potins do |t|
    	t.belongs_to :user
		t.string :city
    	t.text :content
    	t.datetime :date
      t.timestamps
    end
  end
end
