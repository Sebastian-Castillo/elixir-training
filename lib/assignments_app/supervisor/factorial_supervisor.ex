defmodule SophosAppAssignments.FactorialSupervisor do
  use Supervisor
  alias SophosAppAssignments.FactorialGenServer

  def start_link(args) do
    Supervisor.start_link(__MODULE__, args, name: __MODULE__)
  end

  def init(_args) do
    children = [FactorialGenServer]

    Supervisor.init(children, strategy: :one_for_one)
  end
end


# {:ok, supervisor} = SophosAppAssignments.FactorialSupervisor.start_link []
# [{_, pid, _, _}] = Supervisor.which_children supervisor
