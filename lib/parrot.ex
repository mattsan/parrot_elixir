defmodule Parrot do
  def main(_args) do
    IO.puts "app started"
    receive do
    end
  end
end
