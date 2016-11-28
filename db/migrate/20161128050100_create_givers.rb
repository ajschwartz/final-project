class CreateGivers < ActiveRecord::Migration
  def change
    create_table :givers do |t|
      t.string :name
      t.string :email

      t.timestamps

    end
  end
end
