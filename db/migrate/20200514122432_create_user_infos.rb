class CreateUserInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :user_infos do |t|
      t.integer :UserID
      t.string :PhoneNumber
      t.string :Gender
      t.string :Age
      t.integer :UserType
      t.datetime :AcountCreationDate
      t.datetime :LastUpdate
      t.boolean :IsAcountActive
      t.string :UserCity
      t.string :UserArea
      t.string :PinCode
      t.string :LocalAddress
      t.decimal :Latitute
      t.decimal :Longitude
      t.boolean :GovtIDVerified
      t.string :OTP
      t.string :ServiceType

      t.timestamps
    end
  end
end
