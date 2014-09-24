class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :uid
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end
