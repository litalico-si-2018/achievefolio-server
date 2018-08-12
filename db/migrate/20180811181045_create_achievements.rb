class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
    	t.integer :status
    	t.integer :value
    	t.string :description
    	t.string :icon
      t.boolean :achieved
    	t.boolean :secret

      t.timestamps
    end
  end
end
