class CreateCounters < ActiveRecord::Migration[7.0]
  def change
    create_table :counters do |t|
      t.integer :count

      t.timestamps
    end
  end
end
