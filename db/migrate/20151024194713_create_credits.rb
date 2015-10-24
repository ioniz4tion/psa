class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|

    	t.attachment :image
      t.text :description
      t.string :name

      t.timestamps null: false
    end
  end
end
