# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.AnalyzeRecipeInstructions200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :parsedInstructions,
    :ingredients,
    :equipment
  ]

  @type t :: %__MODULE__{
          :parsedInstructions => [
            RecipesBot.SpoonacularClient.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInner.t()
          ],
          :ingredients => [
            RecipesBot.SpoonacularClient.Model.AnalyzeRecipeInstructions200ResponseIngredientsInner.t()
          ],
          :equipment => [
            RecipesBot.SpoonacularClient.Model.AnalyzeRecipeInstructions200ResponseIngredientsInner.t()
          ]
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.AnalyzeRecipeInstructions200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :parsedInstructions,
      :list,
      RecipesBot.SpoonacularClient.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInner,
      options
    )
    |> deserialize(
      :ingredients,
      :list,
      RecipesBot.SpoonacularClient.Model.AnalyzeRecipeInstructions200ResponseIngredientsInner,
      options
    )
    |> deserialize(
      :equipment,
      :list,
      RecipesBot.SpoonacularClient.Model.AnalyzeRecipeInstructions200ResponseIngredientsInner,
      options
    )
  end
end
