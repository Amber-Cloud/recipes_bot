# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.ClassifyGroceryProductRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :title,
    :upc,
    :plu_code
  ]

  @type t :: %__MODULE__{
          :title => String.t(),
          :upc => String.t(),
          :plu_code => String.t()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.ClassifyGroceryProductRequest do
  def decode(value, _options) do
    value
  end
end
