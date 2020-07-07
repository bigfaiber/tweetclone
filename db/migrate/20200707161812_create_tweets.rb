class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text :body, limit: 280, default: "", null: false
      t.references :user, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
