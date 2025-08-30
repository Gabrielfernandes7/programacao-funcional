# Programação Funcional

[![My Skills](https://skillicons.dev/icons?i=elixir&theme=light)](https://skillicons.dev)

## 1. Fundamentos do Paradigma Funcional

O paradigma funcional é um estilo de programação que trata a computação como a **avaliação de funções**. Suas características principais são a **imutabilidade de dados** e a **ausência de efeitos colaterais**, o que torna o código mais previsível e fácil de testar.

### 1. Conceitos Principais do Paradigma Funcional

O paradigma funcional é um estilo de programação que trata a computação como a avaliação de funções matemáticas, enfatizando **imutabilidades**, **funções puras** e **composições de funções**.

**a. Imutabilidade**

* **O que é?** Dados, uma vez criados, não podem ser alterados. Operações criam novos dados, preservando os originais.

* **Por que é importante?** Evita efeitos colaterais inesperados, como corrupções de dados, especialmente em sistemas distribuídos onde múltiplos componentes (ex.: sensores IoT) compartilhando informações.

* **Exemplo em IoT:** Em um sistema de monitoramento de sensores de temperatura, a imutabilidade garante que leituras históricas não sejam sobrescritas, facilitando auditorias ou análises.

```
# Imperativo (mutável)
sensor_data = [20, 22, 21]
sensor_data[0] = 25 # altera o primeiro valor
# Resultado: [25, 22, 21]

# Funcional (imutável)
sensor_data = [20, 22, 21]
new_data = [25] + sensor[1:] # Nova lista
# Resultado: sensor_data = [20, 22, 21], new_data = [25, 22, 21]
```

```elixir
sensor_data = [20, 22, 21]
new_data = [25 | tl(sensor_data)]  # tl/1 retorna a cauda da lista
IO.inspect(sensor_data)  # Saída: [20, 22, 21]
IO.inspect(new_data)     # Saída: [25, 22, 21]
```

**b. Funções Puras**

* **O que é?** Funções que sempre retornam o mesmo resultado para os mesmos argumentos e não causam efeitos colaterais (ex.: não alteram variáveis globais, não escrevem em arquivos).

* **Por que é importante?** Garante previsibilidade e facilita testas, essencial em sistemas IoT onde a consistências dos dados é crítica.

---

## 2. Linguagem Elixir

> [!IMPORTANT]
> **Elixir** é uma linguagem de programação funcional e dinâmica que roda na máquina virtual de Erlang, a **BEAM**. Foi projetada para a construção de sistemas **escaláveis**, **concorrentes** e, principalmente, **tolerantes a falhas**.

### Recursos e Documentação

> [!TIP]
> **Documentação e Repositórios:**
>
> * **Documentação Oficial:** [elixir-lang.org](https://elixir-lang.org/)
> * **Repositório Oficial:** [github.com/elixir-lang](https://github.com/elixir-lang)
> * **Repositório do Criador (José Valim):** [github.com/josevalim](https://github.com/josevalim)