class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :password, :string
    add_column :users, :email, :string
    add_column :users, :phone_number, :string
    add_column :users, :dob, :date
    add_column :users, :age, :integer
    add_column :users, :term_start_date, :date
    add_column :users, :term_end_date, :date
    add_column :users, :zip_code, :integer
  end
end
