defmodule ExSpecTest do
  use ExUnit.Case
  doctest ExSpec

  test "greets the world" do
    assert ExSpec.hello() == :world
  end
end
