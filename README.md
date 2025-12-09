# Curso: Shell Script — Introdução e Automação de Tarefas

Este curso faz parte da plataforma DataEngineer.Help https://dataengineer.help/

## Público-alvo e pré-requisitos
- Público: iniciantes em automação no Linux (ou WSL) com noções básicas de linha de comando.
- Pré-requisitos: terminal funcional, editor de texto, permissões para executar scripts.

## Estrutura das aulas
1) Fundamentos do Shell
- Objetivo: entender o que é shell, tipos (bash, zsh), permissões de execução e shebang.
- Conteúdo: `#!/usr/bin/env bash`, `chmod +x`, como rodar `./script.sh`.
- Prática: rodar `scripts/01_hello.sh`.

2) Variáveis, expansão e entrada do usuário
- Objetivo: criar e ler variáveis, entender expansão e leitura com `read`.
- Conteúdo: variáveis simples, `$(command)`, aspas simples vs duplas, `read -p`.
- Prática: `scripts/02_vars.sh`.

3) Condicionais e testes
- Objetivo: decisões com `if`, `test`/`[ ]` e `[[ ]]`.
- Conteúdo: comparação numérica e de strings, testes de arquivos (`-f`, `-d`).
- Prática: `scripts/03_conditions.sh`.

4) Repetições (loops)
- Objetivo: iterar listas e arquivos.
- Conteúdo: `for`, `while`, `until`, leitura linha a linha.
- Prática: `scripts/04_loops.sh`.

5) Funções, escopos e boas práticas
- Objetivo: organizar código em funções reaproveitáveis.
- Conteúdo: definir/chamar funções, `local`, retorno via status e `echo`.
- Prática: `scripts/05_functions.sh`.

6) Argumentos de linha de comando
- Objetivo: receber flags e parâmetros.
- Conteúdo: `$0`, `$1`, `$@`, `shift`, `getopts`.
- Prática: `scripts/06_args.sh`.

## Como usar os materiais
- Todos os scripts estão em `scripts/`; torne-os executáveis com `chmod +x scripts/*.sh`.
- Execute com `./scripts/nome.sh` (ou `bash scripts/nome.sh`).
- Explore e modifique os exemplos, depois crie versões com suas necessidades.

## Exercícios finais (projeto)
- Crie um coletor de logs que compacte arquivos maiores que 5 MB, mova para `~/logs_archive` e limpe logs antigos (>15 dias).
- Crie um verificador de serviços que cheque se processos estão rodando e envie alerta simples (stdout ou e-mail) quando pararem.
- Empacote ambos e agende via `cron` ou Agendador de Tarefas.


