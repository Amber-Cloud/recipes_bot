# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.IngredientSearch200ResponseResultsInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :image
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :name => String.t(),
          :image => String.t()
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.IngredientSearch200ResponseResultsInner do
  def decode(value, _options) do
    value
  end
end
