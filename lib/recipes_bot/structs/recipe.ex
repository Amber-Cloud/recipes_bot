defmodule RecipesBot.Structs.Recipe do
  @derive {Jason.Encoder, only: [:id, :title, :image, :source_url]}
  defstruct id: nil, title: nil, image: nil, source_url: nil
end
