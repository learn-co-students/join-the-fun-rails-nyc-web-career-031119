class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.name
      t.timestamps null: false
    end
  end
end
