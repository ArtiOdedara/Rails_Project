class RenameDobColumnToUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :dob, :Date_Of_Birth  
  end
end
