class CreateIps < ActiveRecord::Migration[7.0]
  def change
    create_table :ips do |t|
      t.string :address
      t.integer :counter

      t.timestamps
    end
  end
end
