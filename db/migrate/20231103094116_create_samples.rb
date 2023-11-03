class CreateSamples < ActiveRecord::Migration[7.0]
  def change
    create_table :samples do |t|
      t.string :text
      t.integer :value

      t.timestamps
    end
  end
end
