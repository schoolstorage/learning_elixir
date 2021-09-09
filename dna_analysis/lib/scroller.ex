defmodule DnaAnalysis.Scroller do

  def histogram(collection) do
    scroll(collection, fn(map, head) ->  end)
  end

  def scroll([], fun), do: %{}
  def scroll([head | tail], fun) do
    fun.(scroll(tail, fun), head)
  end

end
