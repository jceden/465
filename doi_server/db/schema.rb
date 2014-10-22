
ActiveRecord::Schema.define(version: 20141022014224) do

  create_table "dois", force: true do |t|
    t.integer  "doi_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uris", force: true do |t|
    t.integer  "uri_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "urls", force: true do |t|
    t.string   "url_add"
    t.string   "comment"
    t.integer  "doi_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "urls", ["doi_id"], name: "index_urls_on_doi_id"

end
