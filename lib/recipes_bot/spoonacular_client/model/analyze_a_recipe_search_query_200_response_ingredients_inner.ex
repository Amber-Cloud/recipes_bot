# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.AnalyzeARecipeSearchQuery200ResponseIngredientsInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :image,
    :include,
    :name
  ]

  @type t :: %__MODULE__{
          :image => String.t(),
          :include => boolean(),
          :name => String.t()
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.AnalyzeARecipeSearchQuery200ResponseIngredientsInner do
  def decode(value, _options) do
    value
  end
end