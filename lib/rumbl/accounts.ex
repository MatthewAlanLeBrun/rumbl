defmodule Rumbl.Accounts do 
  @moduledoc """
  All accounts business logic.
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Matthew Alan Le Brun", username: "Evarb"},
      %User{id: "2", name: "Laura Barry", username: "Bubu"},
      %User{id: "3", name: "Toffee", username: "Toftof"}
    ]
  end

  def get_user(id), do: Enum.find(list_users(), fn %User{id: uid} -> id==uid end)

  def get_user_by(params) do 
    Enum.find(list_users(), fn user -> 
      Enum.all?(params, fn {k, v} -> Map.get(user, k) == v end)
    end)
  end
end
