class CreateRepositories < ActiveRecord::Migration[6.1]
  def change
    create_table :repositories do |t|
      t.string :name
      t.text :description
      t.integer :forks
      t.integer :stargazers
      t.string :url
      t.string :owner_avatar
      t.string :owner_name
      t.string :clone_url
      t.string :default_branch
      t.string :homepage
      t.integer :external_id
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
