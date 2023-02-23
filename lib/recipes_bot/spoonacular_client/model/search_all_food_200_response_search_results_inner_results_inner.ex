# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.SearchAllFood200ResponseSearchResultsInnerResultsInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :image,
    :link,
    :type,
    :relevance,
    :content
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :name => String.t(),
          :image => String.t() | nil,
          :link => String.t() | nil,
          :type => String.t(),
          :relevance => float(),
          :content => String.t() | nil
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.SearchAllFood200ResponseSearchResultsInnerResultsInner do
  def decode(value, _options) do
    value
  end
end
