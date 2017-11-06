defmodule Myapp do
  use Application
  use Supervisor

  def start(_type, _args) do
  Supervisor.start_link([{Myapp.Router, []}, {Myapp.ApiHandler, []}], strategy: :one_for_one)
  end

  @moduledoc """
  Documentation for Myapp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Myapp.hello
      :world
      iex>Myapp.say("Karla)
      "Hello Karla"
  """
  def hello do
    :world
  end
  

  @spec say(String.t) :: String.t
  def say(name) do
  "Hello #{name}"
  end
end

