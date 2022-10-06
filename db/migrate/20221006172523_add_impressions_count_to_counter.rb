class AddImpressionsCountToCounter < ActiveRecord::Migration[7.0]
  def change
    add_column :counters, :impressions_count, :integer
  end
end
