class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :screeners, :check_ins_id, :check_in_id
  end
end
