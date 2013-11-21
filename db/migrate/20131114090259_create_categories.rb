class CreateCategories < ActiveRecord::Migration
 
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    create_table :initiatives do |t|
      t.belongs_to :category
      t.timestamps
    end
  end
  
end
