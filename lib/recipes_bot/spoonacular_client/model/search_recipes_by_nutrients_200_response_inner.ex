# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.SearchRecipesByNutrients200ResponseInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :calories,
    :carbs,
    :fat,
    :id,
    :image,
    :imageType,
    :protein,
    :title
  ]

  @type t :: %__MODULE__{
          :calories => float(),
          :carbs => String.t(),
          :fat => String.t(),
          :id => integer(),
          :image => String.t(),
          :imageType => String.t(),
          :protein => String.t(),
          :title => String.t()
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.SearchRecipesByNutrients200ResponseInner do
  def decode(value, _options) do
    value
  end
end
