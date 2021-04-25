class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :card_number
      t.references :user, null: false, foreign_key: true
      t.references :employer, null: false, foreign_key: true
      t.references :bank, null: false, foreign_key: true
      t.timestamps
    end
  end
end
