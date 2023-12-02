class DeviseCreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string     :name, null: false
      t.string     :name_kana, null: false
      t.timestamps null: false
    end
  end
end
