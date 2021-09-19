defmodule DnaAnalysis.Scroller do

  def histogram(collection) do
    IO.inspect scroll(collection)
  end

  def scroll([]), do: %{}
  def scroll([head | tail]) do
    %{ scroll(tail) | head => 1 }
  end

end
