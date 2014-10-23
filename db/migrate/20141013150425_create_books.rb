class CreateBooks < ActiveRecord::Migration
  drop_table :books if ActiveRecord::Base.connection.table_exists? 'books'
  
  def change
    create_table :books do |t|
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
