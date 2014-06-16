class AddPwconfirm < ActiveRecord::Migration
  def change
  	rename_column :registers, :password_confirm, :password_confirmation
  end
end
