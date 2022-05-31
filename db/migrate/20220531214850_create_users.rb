# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :first_name
      t.string :last_name, index: true
      t.string :middle_name, default: ''
      t.string :email, index: { unique: true, name: 'unique_emails' }

      t.timestamps
    end
  end
end
