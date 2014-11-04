class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.boolean :private
      t.references :user_id, index: true

      t.timestamps
    end
  end
end
