defmodule Exercise1.Uppercase do

  def upcase(chararray) do
    # scroll(chararray, fn (head) -> to_upper_case(head) end)
    ucase(chararray)
  end

  defp ucase([]), do: []
  defp ucase([head | tail]) when head in ?a .. ?z, do: [head - 32 | ucase(tail)]
  defp ucase([head | tail]), do: [head | ucase(tail)]

  def scroll([], fun), do: []
  def scroll([head | tail], fun) do
    [fun.(head) | scroll(tail, fun)]
  end

  def to_upper_case(lowercase_char) do
    char_map = %{97 => 65, 98 => 66, 99 => 67, 100 => 68, 101 => 69, 102 => 70, 103 => 71, 104 => 72, 105 => 73, 106 => 74, 107 => 75, 108 => 76, 109 => 77, 110 => 78, 111 => 79, 112 => 80, 113 => 81, 114 => 82, 115 => 83, 116 => 84, 117 => 85, 118 => 86, 119 => 87, 120 => 88, 121 => 89, 122 => 90}
    if lowercase_char >= 97 && lowercase_char <= 122 do
      char_map[lowercase_char]
    else
      lowercase_char
    end
  end

end
