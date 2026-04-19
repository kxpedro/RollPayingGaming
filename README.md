# Roll Paying Game

Roll Paying Game é um RPG web onde todas as decisões são tomadas por uma roleta dinâmica. Inspirado em RPGs clássicos, mas com a sorte como protagonista!

## Como funciona

- Todas as decisões do jogo são feitas girando a roleta.
- O conteúdo da roleta muda conforme a situação do jogo.
- Visual moderno, responsivo e totalmente dinâmico.
- O personagem é criado sorteando raça, classe e equipamentos iniciais.
- A ficha do personagem exibe todos os atributos e perícias, mesmo que estejam zerados.
- Inventário e equipamentos são separados e atualizados automaticamente após a escolha da classe.
- O gameplay é baseado em encontros aleatórios, sorteados pela roleta.
- Cada encontro apresenta um evento narrativo e requisitos (atributos, perícias, itens).
- Após sortear o encontro, uma nova roleta de sucesso/falha é exibida, com fatias proporcionais à chance de sucesso do personagem.
- A chance de sucesso é calculada somando todos os modificadores relevantes do personagem (atributos, perícias, itens, equipamentos).
- O resultado do sucesso/falha é decidido visualmente pela roleta, tornando a experiência mais interativa.
- Todos os encontros e resultados são registrados em um log visível na interface.
- O jogo termina quando o personagem perde todos os corações (vidas).

## Como rodar

1. Certifique-se de ter o .NET 9.0 SDK instalado.
2. Execute `dotnet run` na raiz do projeto.
3. Acesse `http://localhost:5110` no navegador.

## Estrutura

- Página principal: Home
- Página da roleta: `/Roleta`
- Dados do jogo em `/wwwroot/data/` (raças, classes, encontros, atributos, perícias, starter packs)
- Estilos em `/wwwroot/css/site.css`
- Scripts em `/Pages/Roleta.cshtml` (JS embutido)

## Personalização

- Para alterar raças, classes, encontros ou itens, edite os arquivos JSON em `/wwwroot/data/`.
- Para mudar a lógica da roleta ou do gameplay, edite o JS em `/Pages/Roleta.cshtml`.

## Principais Funcionalidades

- Roleta animada e visual, com fatias proporcionais para sucesso/falha.
- Ficha do personagem sempre exibe todos os atributos e perícias.
- Inventário e equipamentos separados e dinâmicos.
- Logs de todos os encontros e resultados.
- Gameplay em loop de encontros até o personagem perder todas as vidas.
- Fácil expansão de conteúdo via arquivos JSON.

---

Desenvolvido para diversão e sorte!
