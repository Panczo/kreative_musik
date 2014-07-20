class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nazwa
      t.text :opis

      t.timestamps
    end
  end
end
