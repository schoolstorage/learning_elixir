defmodule Exercise1.Reverse do

  def reverse(chararray) do
    reverse_char_list(chararray, [])
  end

  defp reverse_char_list([], new_list), do: new_list
  defp reverse_char_list([head | tail], new_list), do: reverse_char_list(tail, [head | new_list])

end
