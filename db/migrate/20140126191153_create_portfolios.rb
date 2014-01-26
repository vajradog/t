class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :body
      t.attachment :image

      t.timestamps
    end
  end
end
