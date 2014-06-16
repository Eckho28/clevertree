class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|

    	t.string :name
    	t.string :email
    	t.string :password
    	t.string :password_confirmation
    	t.string :verification
    	t.string :dl
    	t.string :rec

      t.timestamps
    end
  end
end
