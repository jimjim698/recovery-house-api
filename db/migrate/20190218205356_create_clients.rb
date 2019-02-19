class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.string :chore
      t.string :job
      t.timestamps
    end
  end
end
