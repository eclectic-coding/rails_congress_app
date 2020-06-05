class FollowLists < ActiveRecord::Migration[6.0]
  def change
    create_table :follow_lists do |t|
      t.belongs_to :user
      t.belongs_to :member
      t.text :mem_id
      t.text :full_name
      t.text :state
      t.text :party
    end
  end
end
