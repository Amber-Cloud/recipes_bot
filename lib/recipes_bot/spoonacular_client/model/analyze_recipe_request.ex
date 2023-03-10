# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.AnalyzeRecipeRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :language,
    :includeNutrition,
    :includeTaste
  ]

  @type t :: %__MODULE__{
          :language => String.t() | nil,
          :includeNutrition => boolean() | nil,
          :includeTaste => boolean() | nil
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.AnalyzeRecipeRequest do
  def decode(value, _options) do
    value
  end
end
