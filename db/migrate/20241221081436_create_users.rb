class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :zipcode
      t.string :state
      t.string :country
      t.string :credit_card

      t.timestamps
    end
  end
end
