class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :tag
      t.binary :data

      t.timestamps
    end
  end
end
