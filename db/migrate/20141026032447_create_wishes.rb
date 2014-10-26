class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :description

      t.timestamps
    end
  end
end
