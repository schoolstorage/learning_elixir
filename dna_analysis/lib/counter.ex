defmodule DnaAnalysis.Counter do

  def count(collection, char_code) do
    scroll(collection, char_code)
  end

  def scroll([], _), do: 0
  def scroll([head | tail], char_code) when head == char_code, do: scroll(tail, char_code) + 1
  def scroll([head | tail], char_code), do: scroll(tail, char_code)

end
