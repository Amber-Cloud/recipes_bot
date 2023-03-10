# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.SearchRecipes200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :offset,
    :number,
    :results,
    :totalResults
  ]

  @type t :: %__MODULE__{
          :offset => integer(),
          :number => integer(),
          :results => [
            RecipesBot.SpoonacularClient.Model.SearchRecipes200ResponseResultsInner.t()
          ],
          :totalResults => integer()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.SearchRecipes200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :results,
      :list,
      RecipesBot.SpoonacularClient.Model.SearchRecipes200ResponseResultsInner,
      options
    )
  end
end
