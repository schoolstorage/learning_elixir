defmodule DnaAnalysis.Scroller do

  def histogram(collection) do
    %{
      ?A => DnaAnalysis.Counter.count(collection, ?A),
      ?T => DnaAnalysis.Counter.count(collection, ?T),
      ?C => DnaAnalysis.Counter.count(collection, ?C),
      ?G => DnaAnalysis.Counter.count(collection, ?G)
    }
  end

end
