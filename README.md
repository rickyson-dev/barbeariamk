# MK Barbearia — site + fila de atendimento

- `public/` — site estático (index.html, painel.html, css/, js/, images/)
- `functions/` — API da fila (Cloudflare Pages Functions + banco D1)
- `wrangler.toml` — configuração (cole o ID do banco D1 em `database_id`)

## Publicar (precisa do Wrangler; arrastar-e-soltar NÃO suporta `functions/`)
1. `npm i -g wrangler` (ou use `npx wrangler`) e `wrangler login`
2. `npx wrangler d1 create mk-fila`  → copie o `database_id` para `wrangler.toml`
3. `npx wrangler pages project create mk-barbearia --production-branch main`
4. `npx wrangler pages secret put ADMIN_PASSWORD --project-name mk-barbearia`  (digite a senha do barbeiro)
5. `npx wrangler pages deploy public --project-name mk-barbearia`

Painel do barbeiro: `https://SEU-SITE.pages.dev/painel.html`
As tabelas são criadas automaticamente no primeiro acesso (`schema.sql` é opcional).
