# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetMealPlanTemplates200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :templates
  ]

  @type t :: %__MODULE__{
          :templates => [
            RecipesBot.SpoonacularClient.Model.GetAnalyzedRecipeInstructions200ResponseIngredientsInner.t()
          ]
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.GetMealPlanTemplates200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :templates,
      :list,
      RecipesBot.SpoonacularClient.Model.GetAnalyzedRecipeInstructions200ResponseIngredientsInner,
      options
    )
  end
end
