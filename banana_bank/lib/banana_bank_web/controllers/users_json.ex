defmodule BananaBankWeb.UserJSON do
  alias BananaBank.Users.User
  def create(%{user: user}) do
    %{
      message: "Usuario criado com sucesso",
      data: data(user)
    }
  end

  def get(%{user: user}) do
    %{
      message: "encontrado",
      data: data(user)
    }
  end
  def update(%{user: user}) do
    %{
      message: "atualizado",
      data: data(user)
    }
  end

  def delete(%{user: user}) do
    %{
      message: "deleted",
      data: data(user)
    }
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      cep: user.cep,
      email: user.email,
      name: user.name
    }
  end
end
