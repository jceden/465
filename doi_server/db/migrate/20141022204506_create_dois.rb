class CreateDois < ActiveRecord::Migration
  def change
    create_table :dois do |t|
      t.integer :doi_num

      t.timestamps
    end
  end
end
