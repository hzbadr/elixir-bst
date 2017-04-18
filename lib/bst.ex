defmodule Bst do

  def balance(array, root \\ [], direction \\ :r)
  def balance([n], root, direction) do
    cond do
      n > root -> %{right: n}
      true -> %{left: n}
    end
    n
  end

  def balance([l, r], _, direction) do
    case direction do
      :r -> %{l => %{right: r}}
      _ -> %{r => %{left: l}}
    end
  end

  def balance(array, _, direction) do
    {s1, [root|s2]} = Enum.split(array, div(length(array), 2))
    %{root => %{left: balance(s1, root, :r), right: balance(s2, root, :l)}}
  end
end
