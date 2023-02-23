# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.AnalyzeARecipeSearchQuery200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :dishes,
    :ingredients,
    :cuisines,
    :modifiers
  ]

  @type t :: %__MODULE__{
          :dishes => [
            RecipesBot.SpoonacularClient.Model.AnalyzeARecipeSearchQuery200ResponseDishesInner.t()
          ],
          :ingredients => [
            RecipesBot.SpoonacularClient.Model.AnalyzeARecipeSearchQuery200ResponseIngredientsInner.t()
          ],
          :cuisines => [String.t()],
          :modifiers => [String.t()]
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.AnalyzeARecipeSearchQuery200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :dishes,
      :list,
      RecipesBot.SpoonacularClient.Model.AnalyzeARecipeSearchQuery200ResponseDishesInner,
      options
    )
    |> deserialize(
      :ingredients,
      :list,
      RecipesBot.SpoonacularClient.Model.AnalyzeARecipeSearchQuery200ResponseIngredientsInner,
      options
    )
  end
end
