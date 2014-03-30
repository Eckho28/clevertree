class AddDl < ActiveRecord::Migration
  def change

  	add_column :posts, :DL, :string

  end
end
