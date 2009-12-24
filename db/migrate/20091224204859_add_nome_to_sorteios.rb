class AddNomeToSorteios < ActiveRecord::Migration
  def self.up
    add_column :sorteios, :nome, :string
  end

  def self.down
    remove_column :sorteios, :nome
  end
end
