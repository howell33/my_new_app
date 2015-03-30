class CreateDanceTeams < ActiveRecord::Migration
  def change
    create_table :dance_teams do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :members
      t.boolean :HipHop
      t.boolean :Ballet
      t.boolean :Jazz

      t.timestamps null: false
    end
  end
end
