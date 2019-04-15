class CreateAwards < ActiveRecord::Migration[5.1]
  def change
    create_table :awards do |t|
      t.integer :name, default: 0

      t.timestamps
    end
  end
end
