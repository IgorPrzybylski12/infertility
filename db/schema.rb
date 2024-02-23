ActiveRecord::Schema[7.1].define(version: 2024_02_23_100340) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "data_sources", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "type"
    t.text "title"
    t.string "refNumber"
    t.text "url"
    t.string "file_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "data_sourceable_type"
    t.bigint "data_sourceable_id"
    t.index ["data_sourceable_type", "data_sourceable_id"], name: "index_data_sources_on_data_sourceable"
  end

  create_table "disorders", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ds_authors", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "fullname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gene_products", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "gene_id", null: false
    t.string "type"
    t.index ["gene_id"], name: "index_gene_products_on_gene_id"
  end

  create_table "genes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.integer "chromosomeNumber"
    t.integer "position"
    t.text "loalization"
    t.integer "position0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mi_rnas", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "gene_product_id"
    t.index ["gene_product_id"], name: "index_mi_rnas_on_gene_product_id"
  end

  create_table "poly_variants", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.text "polyFrequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "poly_vx_ds", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proteins", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "gene_product_id"
    t.index ["gene_product_id"], name: "index_proteins_on_gene_product_id"
  end

  create_table "scores", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.float "scoreValue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scoring_machines", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.integer "numericValue"
    t.integer "perceptualValue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "gene_products", "genes"
  add_foreign_key "mi_rnas", "gene_products"
  add_foreign_key "proteins", "gene_products"
end
