defmodule Notes.Note do
  use Notes.Web, :model

  schema "notes" do
    field :title, :string
    field :body, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> update_changeset(params)
    |> capitalize(:title)
  end

  def update_changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body])
    |> validate_required([:title, :body])
    |> validate_length(:title, min: 3, max: 100)
  end

  def capitalize(cs, field) do
    case get_field(cs, field) do
      nil -> cs
      str -> put_change(cs, field, String.capitalize(str))
    end
  end

end
