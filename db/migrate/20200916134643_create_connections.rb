class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.belongs_to :user
      t.belongs_to :friend, class: 'User'
      t.timestamps
    end
  end
end
