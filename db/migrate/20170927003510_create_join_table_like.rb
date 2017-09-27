class CreateJoinTableLike < ActiveRecord::Migration[5.1]
  def change
    create_join_table :photos, :users, force: true, table_name: :likes do |t|
      t.index [:photo_id, :user_id], unique: true
      #t.index [:photo_id, :user_id] # Can see all photos liked by a specific person
       
       t.timestamp :created_at
    end
  end
end
