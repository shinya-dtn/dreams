class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string   :title,     null: false
      t.string   :content,   null: false
      t.datetime :start,     null: false
      t.datetime :end,       null: false
      t.integer  :user_id,   null: false, foregin_key: true
      t.timestamps
    end
  end
end
