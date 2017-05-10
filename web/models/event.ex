defmodule UnparsedEndpoint.Event do
  use UnparsedEndpoint.Web, :model

  schema "events" do
    field :type, :string
    field :name, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:type, :name])
    |> validate_required([:type, :name])
  end
end
