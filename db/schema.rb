# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20220908213150) do

  create_table "clientes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "name"
    t.string   "endereco"
    t.string   "celucar"
    t.string   "rg"
    t.string   "sexo"
    t.date     "data_nasciemnto"
    t.string   "email"
    t.string   "cidade"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "cpf"
  end

  create_table "compras", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "nome_produto"
    t.date     "data_da_compra"
    t.float    "preco_Venda",    limit: 24
    t.integer  "quantidade"
    t.integer  "cliente_id"
    t.integer  "produto_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["cliente_id"], name: "index_compras_on_cliente_id", using: :btree
    t.index ["produto_id"], name: "index_compras_on_produto_id", using: :btree
  end

  create_table "produtos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "descricao"
    t.string   "numero"
    t.float    "preco_compra", limit: 24
    t.float    "preco_venda",  limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "quantidade"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "compras", "clientes"
  add_foreign_key "compras", "produtos"
end
