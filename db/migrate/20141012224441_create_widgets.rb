class CreateWidgets < ActiveRecord::Migration
  drop_table :widgets if ActiveRecord::Base.connection.table_exists? 'widgets'
  
  def change
    create_table :widgets do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
