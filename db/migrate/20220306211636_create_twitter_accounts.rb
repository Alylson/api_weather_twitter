class CreateTwitterAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :twitter_accounts do |t|

      t.timestamps
    end
  end
end
