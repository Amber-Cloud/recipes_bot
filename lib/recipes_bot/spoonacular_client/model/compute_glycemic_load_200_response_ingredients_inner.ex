# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.ComputeGlycemicLoad200ResponseIngredientsInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :original,
    :glycemicIndex,
    :glycemicLoad
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :original => String.t(),
          :glycemicIndex => float(),
          :glycemicLoad => float()
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.ComputeGlycemicLoad200ResponseIngredientsInner do
  def decode(value, _options) do
    value
  end
end
