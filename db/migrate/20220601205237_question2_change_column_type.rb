class Question2ChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column(:screeners, :question2, :string)
  end
end
