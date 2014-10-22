class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :url_add
      t.string :comment
      t.references :doi, index: true

      t.timestamps
    end
  end
end
