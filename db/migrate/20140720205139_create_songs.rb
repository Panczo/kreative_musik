class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.text :description
      t.references :team, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
