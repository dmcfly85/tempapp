class CreateTemps < ActiveRecord::Migration
  def change
    create_table :temps do |t|
      t.float :insidetemp
      t.float :outsidetemp

      t.timestamps
    end
  end
end
