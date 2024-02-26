# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_26_115504) do
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
    t.uuid "poly_variant_id"
    t.index ["poly_variant_id"], name: "index_genes_on_poly_variant_id"
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
    t.uuid "disorder_id"
    t.uuid "poly_variant_id"
    t.uuid "scoring_machine_id"
    t.index ["disorder_id"], name: "index_poly_vx_ds_on_disorder_id"
    t.index ["poly_variant_id"], name: "index_poly_vx_ds_on_poly_variant_id"
    t.index ["scoring_machine_id"], name: "index_poly_vx_ds_on_scoring_machine_id"
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
    t.string "scoreable_type"
    t.uuid "scoreable_id"
    t.uuid "data_source_id", null: false
    t.index ["data_source_id"], name: "index_scores_on_data_source_id"
    t.index ["scoreable_id"], name: "index_scores_on_scoreable_id"
  end

  create_table "scoring_machines", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.integer "numericValue"
    t.integer "perceptualValue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "gene_products", "genes"
  add_foreign_key "genes", "poly_variants"
  add_foreign_key "mi_rnas", "gene_products"
  add_foreign_key "poly_vx_ds", "disorders"
  add_foreign_key "poly_vx_ds", "poly_variants"
  add_foreign_key "poly_vx_ds", "scoring_machines"
  add_foreign_key "proteins", "gene_products"
  add_foreign_key "scores", "data_sources"
end
