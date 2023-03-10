class AddColumnsToRating < ActiveRecord::Migration[7.0]
  def change
    add_column :ratings, :rateable_id, :integer
    add_column :ratings, :rateable_type, :string
  end
end
