class CreateUsersGovtIds < ActiveRecord::Migration[6.0]
  def change
    create_table :users_govt_ids do |t|
      t.integer :UserID
      t.string :Image
      t.string :GovtIDName
      t.integer :IsValidate

      t.timestamps
    end
  end
end
