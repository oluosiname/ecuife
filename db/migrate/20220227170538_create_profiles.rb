# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.date :dob
      t.string :country_of_residence
      t.string :continent_of_residence
      t.string :city_of_residence
      t.references :user

      t.timestamps
    end
  end
end
