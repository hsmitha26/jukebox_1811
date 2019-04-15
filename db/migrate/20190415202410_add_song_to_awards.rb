class AddSongToAwards < ActiveRecord::Migration[5.1]
  def change
    add_reference :awards, :song, foreign_key: true
  end
end
