class CreateGames < ActiveRecord::Migration
  drop_table :games if ActiveRecord::Base.connection.table_exists? 'games'
  
  def change
    create_table :games do |t|
      t.string :name

      t.timestamps
    end
  end
end
