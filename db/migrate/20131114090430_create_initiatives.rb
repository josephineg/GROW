class CreateInitiatives < ActiveRecord::Migration
  
  def change
    create_table :initiatives do |t|
      t.string :title
      t.string :description
      t.integer :rating

      t.timestamps
    end

    create_table :categories do |t|
      t.belongs_to :initiatives
      t.string :name
      t.timestamps
  end
end
