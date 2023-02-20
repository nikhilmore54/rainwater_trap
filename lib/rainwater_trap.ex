defmodule RainwaterTrap do
  @moduledoc """
  Documentation for `RainwaterTrap`.
  """

  @spec trap(height :: [integer]) :: integer
  def trap(height) do
    if Enum.sort(height, :asc) == height or Enum.sort(height, :desc) == height do
      0
    else
      calculate_trap(height)
    end
  end

  def calculate_trap([first | [_second | [_third | _rest]]] = height) do
    max = Enum.max(height)
    last = List.last(height)

    if max == last do
      if max == first do
        calculate_volume(height)
      else
        next_max = Enum.max(Enum.slice(height, 0..-2//1))

        if next_max == first do
          calculate_volume(height)
        else
          {left, right} = Enum.split_while(height, fn x -> x != next_max end)
          calculate_trap(left ++ [max]) + calculate_trap(Enum.reverse(right))
        end
      end
    else
      {left, right} = Enum.split_while(height, fn x -> x != max end)
      calculate_trap(left ++ [max]) + calculate_trap(Enum.reverse(right))
    end
  end

  def calculate_trap(_height) do
    0
  end

  def calculate_volume([first | rest]) do
    Enum.min([first, List.last(rest)]) *
      (length(rest) - 1) -
      Enum.sum(Enum.slice(rest, 0..-2//1))
  end
end
