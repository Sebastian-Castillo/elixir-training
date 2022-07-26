defmodule AssignmentsAppTest do
  use ExUnit.Case
  doctest AssignmentsApp

  test "greets the world" do
    assert AssignmentsApp.hello() == :world
  end
end
