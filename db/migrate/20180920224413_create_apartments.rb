class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :street
      t.integer :apto_number
      t.string :city
      t.integer :postal_code
      t.string :state
      t.string :country
      t.string :manager_name
      t.string :manager_phone_number
      t.string :contact_hours
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
