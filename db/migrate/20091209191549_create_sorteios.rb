class CreateSorteios < ActiveRecord::Migration
  def self.up
    create_table :sorteios do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :sorteios
  end
end
