class CreateScreeners < ActiveRecord::Migration[6.1]
  def change
    create_table :screeners do |t|
      t.integer :question1
      t.integer :question2
      t.references :check_ins, null: false, foreign_key: true

      t.timestamps
    end
  end
end
