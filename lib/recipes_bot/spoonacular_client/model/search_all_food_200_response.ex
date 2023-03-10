# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.SearchAllFood200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :query,
    :totalResults,
    :limit,
    :offset,
    :searchResults
  ]

  @type t :: %__MODULE__{
          :query => String.t(),
          :totalResults => integer(),
          :limit => integer(),
          :offset => integer(),
          :searchResults => [
            RecipesBot.SpoonacularClient.Model.SearchAllFood200ResponseSearchResultsInner.t()
          ]
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.SearchAllFood200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :searchResults,
      :list,
      RecipesBot.SpoonacularClient.Model.SearchAllFood200ResponseSearchResultsInner,
      options
    )
  end
end
