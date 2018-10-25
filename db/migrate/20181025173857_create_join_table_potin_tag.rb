class CreateJoinTablePotinTag < ActiveRecord::Migration[5.2]
  def change
    create_join_table :potins, :tags do |t|
       t.index [:potin_id, :tag_id]
      # t.index [:tag_id, :potin_id]
    end
  end
end
