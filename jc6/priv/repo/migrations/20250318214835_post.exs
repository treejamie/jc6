defmodule Jc6.Repo.Migrations.Post do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string, null: false
      add :slug, :string, null: false
      add :content, :text, null: false
      add :excerpt, :text
      add :status, :string, default: "draft", null: false
      add :published_at, :utc_datetime
      add :featured, :boolean, default: false, null: false

      timestamps()
    end

    # Create indexes
    create unique_index(:posts, [:slug])
    create index(:posts, [:status])
    create index(:posts, [:published_at])
    create index(:posts, [:featured])
  end
end
