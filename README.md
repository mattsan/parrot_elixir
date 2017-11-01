# Parrot

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `parrot` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:parrot, "~> 0.1.0"}
  ]
end
```

## Usage

### Start Application

```
$ git clone git@github.com:mattsan/parrot_elixir.git
$ cd parrot_elixir
$ mix deps.get
$ mix run --no-halt
```

### request

```
$ curl http://localhost:8080
Hello !
$ curl http://localhost:8080/world
Hello world!
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/parrot](https://hexdocs.pm/parrot).

