defmodule RainwaterTrapTest do
  use ExUnit.Case
  doctest RainwaterTrap

  test "run rainwater trap with various scenarios" do
    input =  [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]
    assert RainwaterTrap.trap(input) == 6

    input = [ 4,2,0,3,2,5]
    assert RainwaterTrap.trap(input) == 9

    input = [3, 0, 2, 0, 4]
    assert RainwaterTrap.trap(input) == 7
  end
end
