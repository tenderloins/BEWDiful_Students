class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :name
      t.string :original_link
      t.string :new_link

      t.timestamps
    end
  end
end
