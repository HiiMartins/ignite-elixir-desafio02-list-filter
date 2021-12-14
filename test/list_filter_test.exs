defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "Filter the integers in a list and return the number of odd numbers" do
    assert ListFilter.odd_number_amounts(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
  end
end
