# Personalização do demonstrativo

Este projeto é um ponto de partida visual; não representa um escritório real. Para cada apresentação, edite `src/config/officeConfig.ts`.

- Atualize `name`, textos principais, contatos confirmados e endereço/horários somente após validação.
- Configure `whatsapp` em formato internacional com DDI e DDD, apenas quando o número estiver autorizado. Deixe vazio para ocultar o atalho.
- Edite ou remova cada item de `areas` e `articles`; os detalhes e links são gerados a partir desses dados.
- Adicione profissionais somente com informações e imagens autorizadas. A seção de perfil atual é intencionalmente demonstrativa.
- Substitua `public/office-hero.png` pela imagem institucional autorizada mantendo o mesmo nome, ou altere os usos da imagem em `src/styles.css`.
- As três fotos complementares estão em `public/*.webp` e alimentam a galeria interativa e os destaques editoriais. Créditos/origem: [Unsplash — office lounge](https://unsplash.com/photos/modern-office-lounge-area-with-contemporary-furniture-QVVHV24DA_o), [Unsplash — sala de reunião](https://unsplash.com/photos/an-office-with-a-view-of-the-city-MDZIf0QaYRE) e [Unsplash — escritório com vista urbana](https://unsplash.com/photos/modern-office-with-city-view-through-large-windows-FJzZWknsvMs). A página de cada foto indica uso gratuito sob a licença Unsplash; mantenha a atribuição na apresentação de demonstração e substitua as imagens por material autorizado na versão real.
- Revise a política de privacidade, o aviso legal, os metadados e as informações profissionais antes de publicar. O formulário atual não transmite nem armazena dados.

Para preparar cinco propostas comerciais, mantenha uma cópia de configuração por apresentação e altere apenas os dados centrais. Não duplique páginas ou componentes.

## Executar

Instale as dependências com `npm install` e inicie com `npm run dev`. Gere a versão de produção com `npm run build`.
