defmodule ListFilter do
  defp filter_integers(list) do
    Enum.flat_map(list, fn x ->
      case Integer.parse(x) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end

  def odd_number_amounts(list) do
    list = filter_integers(list)
    Enum.count(list, fn x -> rem(x, 2) != 0 end)
  end
end
