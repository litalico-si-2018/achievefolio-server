class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    	t.string :body
    	t.integer :user_id
    	t.integer :post_id
    	t.integer :status

      t.timestamps
    end
  end
end
