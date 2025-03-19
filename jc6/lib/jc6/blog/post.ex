# the scheme
defmodule Jc6.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    field :slug, :string
    field :content, :string
    field :markdown, :string
    field :excerpt, :string
    field :status, :string, default: "draft" # draft, published, archived
    field :published_at, :utc_datetime
    field :featured, :boolean, default: false

    timestamps()
  end

  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :excerpt, :status, :published_at, :featured, :author_id])
    |> validate_required([:title, :content, :author_id])
    |> validate_inclusion(:status, ["draft", "published", "archived"])
    |> generate_slug()
    |> unique_constraint(:slug)
    |> foreign_key_constraint(:author_id)
  end

  defp generate_slug(changeset) do
    case get_change(changeset, :title) do
      nil -> changeset
      title ->
        slug = title
               |> String.downcase()
               |> String.replace(~r/[^a-z0-9\s-]/, "")
               |> String.replace(~r/\s+/, "-")
               |> String.trim("-")
        put_change(changeset, :slug, slug)
    end
  end
end
