class AddParticipanteIdToParticipantes < ActiveRecord::Migration
  def self.up
    add_column :participantes, :participante_id, :integer
    add_column :participantes, :presente, :string
    add_column :participantes, :presente_amigo, :string
  end

  def self.down
    remove_column :participantes, :participante_id
    remove_column :participantes, :presente
    remove_column :participantes, :presente_amigo
  end
end
