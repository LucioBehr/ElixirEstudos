defmodule BananaBank.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Ecto.Changeset

  @required_params_create [:name, :password, :email, :cep]
  @required_params_update [:name, :email, :cep]

  schema "Users" do
      field :name, :string
      field :password_hash, :string
      field :password, :string, virtual: true
      field :email, :string
      field :cep, :string

      timestamps()
  end

  def changeset(user \\ %__MODULE__{}, params)


  def changeset(%__MODULE__{id: :nil} = user, params) do
    user
    |> cast(params, @required_params_create)
    |> do_validation(@required_params_create)

  end

  def changeset(user, params) do
    user
    |> cast(params, @required_params_update)
    |> do_validation(@required_params_update)
  end

  defp do_validation(changeset, fields) do
    changeset
    |> validate_required(fields)
    |> validate_length(:name, min: 3)
    |> validate_format(:email, ~r/@/)
    |> validate_length(:cep, is: 8)
    |> add_password_hash()
  end


  defp add_password_hash(%Changeset{valid?: true, changes: %{password: password}} = changeset) do
    change(changeset, Argon2.add_hash(password))
  end
  defp add_password_hash(changeset), do: changeset
end
