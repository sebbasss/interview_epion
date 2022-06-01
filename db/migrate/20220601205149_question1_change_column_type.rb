class Question1ChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column(:screeners, :question1, :string)
  end
end
