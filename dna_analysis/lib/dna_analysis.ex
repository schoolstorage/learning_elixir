defmodule DnaAnalysis do

  def count(collection, char_code) do
    DnaAnalysis.Counter.count(collection, char_code)
  end

  def histogram(collection) do
    DnaAnalysis.Scroller.histogram(collection)
  end

end
