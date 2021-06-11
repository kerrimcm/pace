class CreateMeetups < ActiveRecord::Migration[6.1]
  def change
    create_table :meetups do |t|
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
