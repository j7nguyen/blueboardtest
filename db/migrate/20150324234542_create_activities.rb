class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :offer_url
      t.string :img_url
      t.string :caption
      
      t.timestamps
    end
  end
end
