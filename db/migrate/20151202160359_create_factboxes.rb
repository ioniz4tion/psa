class CreateFactboxes < ActiveRecord::Migration
  def change
    create_table :factboxes do |t|
      t.string :title
      t.string :number
      t.string :unit
      t.string :description

      t.timestamps null: false
    end
  end
end
