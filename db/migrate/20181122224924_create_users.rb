class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.string :jobtitle
      t.string :officephone
      t.string :celphone
      t.text :address
      t.string :country
      t.string :twitter
      t.string :facebook
      t.string :googleplus
      t.string :website
      t.string :photousr

      t.timestamps
    end
  end
end
