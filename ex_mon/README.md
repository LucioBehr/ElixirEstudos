# ExMon
# Objetivo:
# Jogo de turno de humano vs máquina.
# A cada turno, cada jogador tem direito a fazer 3 movimentos, sendo eles: 
# Movimentos: 1- Ataque Moderado(18-25 dano). 2- Ataque Variado(10-35 dano). 3- Cura (18-25 vida)
# Jogador define seu nome e nome dos seus 3 movimentos
# Jogador começa com 100 de vida
# NÃO é possível se curar ficando com mais de 100 de vida nem ficar com menos de 0 de vida caso o dano seja maior que sua vida atual.
# Quando um dos 2 morre, o jogo termina e uma mensagem é exibida ao final com vitória ou derrota
# Necessário sempre validar o estado- De quem é a vez, se o jogo começou, terminou.




## Installation
If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_mon` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_mon, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/ex_mon>.

