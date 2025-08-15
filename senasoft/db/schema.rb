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

ActiveRecord::Schema[8.0].define(version: 2025_08_15_180000) do
  create_table "cups", force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.boolean "habilita"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documentos", force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.boolean "habilita"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eps", force: :cascade do |t|
    t.string "codigo"
    t.string "razon_social"
    t.string "nit"
    t.boolean "habilita"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.boolean "habilita"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nivels", force: :cascade do |t|
    t.integer "eps_id", null: false
    t.string "nivel"
    t.string "nombre"
    t.integer "regimen_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eps_id"], name: "index_nivels_on_eps_id"
    t.index ["regimen_id"], name: "index_nivels_on_regimen_id"
  end

  create_table "opcions", force: :cascade do |t|
    t.string "variable"
    t.string "descripcion"
    t.integer "valor"
    t.string "nombre"
    t.string "abreviacion"
    t.boolean "habilita"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orden_resultados", force: :cascade do |t|
    t.datetime "fecha"
    t.integer "orden_id", null: false
    t.integer "procedimiento_id", null: false
    t.integer "prueba_id", null: false
    t.integer "pruebaopcion_id", null: false
    t.string "res_opcion"
    t.decimal "res_numerico"
    t.string "res_texto"
    t.text "res_memo"
    t.integer "num_procesamientos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orden_id"], name: "index_orden_resultados_on_orden_id"
    t.index ["procedimiento_id"], name: "index_orden_resultados_on_procedimiento_id"
    t.index ["prueba_id"], name: "index_orden_resultados_on_prueba_id"
    t.index ["pruebaopcion_id"], name: "index_orden_resultados_on_pruebaopcion_id"
  end

  create_table "ordens", force: :cascade do |t|
    t.integer "persona_id", null: false
    t.string "documento"
    t.string "numero_orden"
    t.date "fecha_orden"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["persona_id"], name: "index_ordens_on_persona_id"
  end

  create_table "personas", force: :cascade do |t|
    t.integer "tipo_identificacion_id", null: false
    t.string "numero_identificacion", null: false
    t.string "apellido1", null: false
    t.string "apellido2"
    t.string "nombre1", null: false
    t.string "nombre2"
    t.date "fecha_nacimiento"
    t.integer "sexo_biologico_id", null: false
    t.string "direccion"
    t.string "telefono_movil"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_personas_on_email", unique: true
    t.index ["sexo_biologico_id"], name: "index_personas_on_sexo_biologico_id"
    t.index ["tipo_identificacion_id"], name: "index_personas_on_tipo_identificacion_id"
  end

  create_table "procedimientos", force: :cascade do |t|
    t.integer "cups_id", null: false
    t.integer "grupo_laboratorio_id", null: false
    t.string "metodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cups_id"], name: "index_procedimientos_on_cups_id"
    t.index ["grupo_laboratorio_id"], name: "index_procedimientos_on_grupo_laboratorio_id"
  end

  create_table "profesionals", force: :cascade do |t|
    t.string "codigo"
    t.integer "persona_id", null: false
    t.string "registro_medico"
    t.integer "tipo_prof_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["persona_id"], name: "index_profesionals_on_persona_id"
    t.index ["tipo_prof_id"], name: "index_profesionals_on_tipo_prof_id"
  end

  create_table "prueba_opcions", force: :cascade do |t|
    t.integer "prueba_id", null: false
    t.string "opcion"
    t.decimal "valor_ref_min_f"
    t.decimal "valor_ref_max_f"
    t.decimal "valor_ref_min_m"
    t.decimal "valor_ref_max_m"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prueba_id"], name: "index_prueba_opcions_on_prueba_id"
  end

  create_table "pruebas", force: :cascade do |t|
    t.integer "procedimiento_id", null: false
    t.string "codigo"
    t.string "nombre"
    t.integer "tipo_resultado_id", null: false
    t.string "unidad_medida"
    t.boolean "habilita"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["procedimiento_id"], name: "index_pruebas_on_procedimiento_id"
    t.index ["tipo_resultado_id"], name: "index_pruebas_on_tipo_resultado_id"
  end

  create_table "tarjeteros", force: :cascade do |t|
    t.string "historia"
    t.integer "persona_id", null: false
    t.integer "regimen_id", null: false
    t.integer "eps_id", null: false
    t.integer "nivel_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eps_id"], name: "index_tarjeteros_on_eps_id"
    t.index ["nivel_id"], name: "index_tarjeteros_on_nivel_id"
    t.index ["persona_id"], name: "index_tarjeteros_on_persona_id"
    t.index ["regimen_id"], name: "index_tarjeteros_on_regimen_id"
  end

  add_foreign_key "nivels", "eps", column: "eps_id"
  add_foreign_key "nivels", "regimen", column: "regimen_id"
  add_foreign_key "orden_resultados", "ordens"
  add_foreign_key "orden_resultados", "procedimientos"
  add_foreign_key "orden_resultados", "pruebaopcions"
  add_foreign_key "orden_resultados", "pruebas"
  add_foreign_key "ordens", "personas"
  add_foreign_key "personas", "opcions", column: "sexo_biologico_id"
  add_foreign_key "personas", "opcions", column: "tipo_identificacion_id"
  add_foreign_key "procedimientos", "cups", column: "cups_id"
  add_foreign_key "procedimientos", "grupo_laboratorios"
  add_foreign_key "profesionals", "personas"
  add_foreign_key "profesionals", "tipo_profs"
  add_foreign_key "prueba_opcions", "pruebas"
  add_foreign_key "pruebas", "procedimientos"
  add_foreign_key "pruebas", "tipo_resultados"
  add_foreign_key "tarjeteros", "eps", column: "eps_id"
  add_foreign_key "tarjeteros", "nivels"
  add_foreign_key "tarjeteros", "personas"
  add_foreign_key "tarjeteros", "regimen", column: "regimen_id"
end
