# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetRecipeInformation200ResponseWinePairingProductMatchesInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :title,
    :description,
    :price,
    :imageUrl,
    :averageRating,
    :ratingCount,
    :score,
    :link
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :title => String.t(),
          :description => String.t(),
          :price => String.t(),
          :imageUrl => String.t(),
          :averageRating => float(),
          :ratingCount => integer(),
          :score => float(),
          :link => String.t()
        }
end

defimpl Poison.Decoder,
  for:
    RecipesBot.SpoonacularClient.Model.GetRecipeInformation200ResponseWinePairingProductMatchesInner do
  def decode(value, _options) do
    value
  end
end
