# Introdução ao Elixir: Conceitos Básicos

Este documento apresenta os conceitos fundamentais da linguagem de programação Elixir, uma linguagem funcional, dinâmica e voltada para sistemas concorrentes, escaláveis e tolerantes a falhas, executada na máquina virtual BEAM (do Erlang). Vamos cobrir a instalação, o modo interativo (IEx), tipos de dados básicos e operações básicas.
Instalação do Elixir

> [!IMPORTANT]
> Antes de começar, você precisa instalar o Elixir no seu sistema operacional. Siga as instruções oficiais no guia de instalação do Elixir para o seu sistema (Windows, macOS, Linux, etc.).

Após a instalação, você pode verificar a versão instalada do Elixir e do Erlang com o comando:
elixir -v

Exemplo de saída:
```
Erlang/OTP 27 [erts-15.0.1] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]
Elixir 1.17.2
```


> [!TIP]
> Certifique-se de que tanto o Elixir quanto o Erlang estão instalados corretamente, pois o Elixir depende da máquina virtual BEAM do Erlang para funcionar.

Modo Interativo (IEx)
Elixir possui uma ferramenta interativa chamada IEx (Interactive Elixir), que permite avaliar expressões em tempo real.

> [!NOTE]
> Para iniciar o IEx, digite iex no terminal. No Windows PowerShell, use iex.bat.

Ao abrir o IEx, você verá algo como:

```
Interactive Elixir (1.17.2) - press Ctrl+C to exit (type h() ENTER for help)
iex>
```


> [!TIP] 
> No IEx, use h() e pressione Enter para acessar a ajuda interativa. Isso é útil para explorar funções e módulos enquanto aprende.

Tipos de Dados Básicos
Elixir possui vários tipos de dados fundamentais que são essenciais para começar a programar. Vamos explorar os principais.
Inteiros
Inteiros são números sem parte decimal e podem ser representados em diferentes bases (binária, octal, hexadecimal):
```elixir
iex> 255
255
iex> 0b0110  # Binário
6
iex> 0o644   # Octal
420
iex> 0x1F    # Hexadecimal
31
```

> [!NOTE]
> Use os prefixos 0b (binário), 0o (octal) e 0x (hexadecimal) para representar números em bases diferentes.

Números de Ponto Flutuante (Floats)
Números de ponto flutuante em Elixir têm precisão dupla de 64 bits e requerem pelo menos um dígito antes do ponto decimal. Eles também suportam notação científica com e:

```
iex> 3.14
3.14
iex> 1.0e-10
1.0e-10
```

> [!IMPORTANT]
> Um número como .14 (sem dígito antes do ponto) causará um erro de sintaxe: ** (SyntaxError) syntax error before: '.'.

Booleanos
Elixir suporta os valores booleanos true e false. Além disso, tudo em Elixir é considerado "verdadeiro" (truthy), exceto false e nil:

```
iex> true
true
iex> false
false
iex> is_boolean(:true)
true
```

> [!NOTE]
> Os valores booleanos true e false são, na verdade, átomos :true e :false. Isso significa que is_atom(true) retorna true.

Átomos
Um átomo é uma constante cujo nome é seu próprio valor, semelhante aos Symbols do Ruby. Eles são amplamente usados para representar estados, chaves em mapas e nomes de módulos:

```
iex> :foo
:foo
iex> :foo == :bar
false
iex> is_atom(MyApp.MyModule)
true
```

> [!TIP]
> Átomos são usados em bibliotecas Erlang, como :crypto.strong_rand_bytes(3), e para nomes de módulos, como MyApp.MyModule, mesmo que o módulo ainda não exista.

Strings
Strings em Elixir são codificadas em UTF-8 e delimitadas por aspas duplas. Elas suportam quebras de linha e sequências de escape:

```
iex> "Olá, mundo!"
"Olá, mundo!"
iex> "foo\nbar"
"foo\nbar"
```

> [!IMPORTANT]
> Strings em Elixir são UTF-8, o que permite trabalhar facilmente com caracteres de diferentes idiomas, como "dziękuję" (obrigado em polonês).

Operações Básicas
Elixir oferece operações aritméticas, booleanas, de comparação, interpolação de strings e concatenação.
Aritmética
Os operadores básicos são +, -, * e /. A divisão (/) sempre retorna um número de ponto flutuante:

```
iex> 2 + 2
4
iex> 10 / 5
2.0
```

Para divisão inteira ou resto da divisão, use as funções div/2 e rem/2:

```
iex> div(10, 3)
3
iex> rem(10, 3)
1
```

> [!TIP] 
> Use div/2 e rem/2 quando precisar de resultados inteiros ou do resto de uma divisão, como em cálculos de modularidade.

Operações Booleanas
Elixir suporta os operadores ||, && e !, que funcionam com qualquer tipo de dado, já que apenas false e nil são considerados falsos:

```
iex> -20 || true
-20
iex> false || 42
42
iex> !false
true
```

Além disso, os operadores and, or e not exigem que o primeiro argumento seja um booleano:

```
iex> true and 42
42
iex> not 42
** (ArgumentError) argument error
```

> [!NOTE]
> Os operadores and e or em Elixir são equivalentes a andalso e orelse no Erlang, garantindo curto-circuito estrito.

Comparações
Elixir suporta os operadores de comparação padrão: ==, !=, ===, !==, <=, >=, < e >:

```
iex> 1 > 2
false
iex> 2 == 2.0
true
iex> 2 === 2.0
false
```

> [!IMPORTANT]
> Use === para comparações estritas entre inteiros e floats. Elixir também permite comparar diferentes tipos, seguindo a ordem: número < átomo < referência < função < porto < pid < tupla < mapa < lista < bitstring.

Interpolação e Concatenação de Strings
A interpolação de strings usa #{} para inserir valores, e a concatenação usa o operador <>:

```
iex> nome = "João"
"João"
iex> "Olá, #{nome}!"
"Olá, João!"
iex> "Olá, " <> nome
"Olá, João!"
```

> [!TIP]
> A interpolação (#{}) é ideal para construir strings dinâmicas de forma legível, enquanto <> é útil para combinar strings diretamente.

> [!NOTE]
> Para aprender mais, experimente criar pequenos programas no IEx e consulte a documentação oficial do Elixir ou continue explorando os recursos da Elixir School.
