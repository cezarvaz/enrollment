ActiveRecord::Schema.define(version: 20_160_412_153_535) do
  create_table 'courses', force: :cascade do |t|
    t.string   'name'
    t.string   'description'
    t.integer  'status'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  create_table 'students', force: :cascade do |t|
    t.string   'name'
    t.integer  'status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
