Hanami::Model.migration do
  change do
    create_table :books do
      primary_key :id

      column :name, String, null: false
      column :author_id, Integer, null: false
      column :published_at, DateTime, null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
