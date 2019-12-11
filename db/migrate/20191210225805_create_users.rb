class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :bums do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :confirm_password

      t.timestamps
    end
  end
end
