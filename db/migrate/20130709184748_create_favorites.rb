class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :contact_id

      t.timestamps
    end
  end
end
