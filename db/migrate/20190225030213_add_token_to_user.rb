class AddTokenToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :autho_token, :string
  end
end
