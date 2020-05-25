class CreateServiceTypeNames < ActiveRecord::Migration[6.0]
  def change
    create_table :service_type_names do |t|
      t.integer :servicetypeId
      t.string :ServiceName
      t.integer :ServiceType
      t.string :Servicedescription
      t.integer :ServiceStatus

      t.timestamps
    end
  end
end
