defmodule Exercise1.Uppercase do

  def upcase(chararray) do
    convert_to_upper_case(chararray, [])
  end

  def convert_to_upper_case([head | tail], modified_list) do

    convert_to_upper_case(tail, modified_list ++ [to_upper_case(head)])
  end

  def convert_to_upper_case([], modified_list), do: modified_list

  def to_upper_case(lowercase_char) do
    char_map = %{97 => 65, 98 => 66, 99 => 67, 100 => 68, 101 => 69, 102 => 70, 103 => 71, 104 => 72, 105 => 73, 106 => 74, 107 => 75, 108 => 76, 109 => 77, 110 => 78, 111 => 79, 112 => 80, 113 => 81, 114 => 82, 115 => 83, 116 => 84, 117 => 85, 118 => 86, 119 => 87, 120 => 88, 121 => 89, 122 => 90}
    if lowercase_char >= 97 && lowercase_char <= 122 do
      char_map[lowercase_char]
    else
      lowercase_char
    end
  end

end
