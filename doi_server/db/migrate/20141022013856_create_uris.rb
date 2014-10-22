class CreateUris < ActiveRecord::Migration
  def change
    create_table :uris do |t|
      t.integer :uri_num

      t.timestamps
    end
  end
end
