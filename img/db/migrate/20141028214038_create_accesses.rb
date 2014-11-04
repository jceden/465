class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.references :image_id, index: true
      t.references :user_id, index: true

      t.timestamps
    end
  end
end
