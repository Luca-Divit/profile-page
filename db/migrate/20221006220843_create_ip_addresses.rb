class CreateIpAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :ip_addresses do |t|
      t.string :address
      t.integer :counter

      t.timestamps
    end
  end
end
