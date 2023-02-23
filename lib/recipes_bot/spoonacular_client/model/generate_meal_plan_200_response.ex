# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GenerateMealPlan200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :meals,
    :nutrients
  ]

  @type t :: %__MODULE__{
          :meals => [RecipesBot.SpoonacularClient.Model.GetSimilarRecipes200ResponseInner.t()],
          :nutrients =>
            RecipesBot.SpoonacularClient.Model.GenerateMealPlan200ResponseNutrients.t()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.GenerateMealPlan200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :meals,
      :list,
      RecipesBot.SpoonacularClient.Model.GetSimilarRecipes200ResponseInner,
      options
    )
    |> deserialize(
      :nutrients,
      :struct,
      RecipesBot.SpoonacularClient.Model.GenerateMealPlan200ResponseNutrients,
      options
    )
  end
end