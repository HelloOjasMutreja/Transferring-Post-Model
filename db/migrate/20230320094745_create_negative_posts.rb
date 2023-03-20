class CreateNegativePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :negative_posts do |t|
      t.string :title

      t.timestamps
    end
  end
end
