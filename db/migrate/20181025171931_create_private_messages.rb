class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
    	t.references :recipient, index: true
      t.references :sender, index: true
    	t.string :topic
    	t.text :content
    	t.datetime :date
    	t.timestamps
    end
  end
end
