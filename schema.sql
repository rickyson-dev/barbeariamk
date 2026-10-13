-- Opcional: as tabelas também são criadas automaticamente na primeira requisição.
CREATE TABLE IF NOT EXISTS fila (id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT NOT NULL, chave TEXT NOT NULL, status TEXT NOT NULL DEFAULT 'esperando', pos REAL NOT NULL, criado INTEGER NOT NULL, atualizado INTEGER NOT NULL);
CREATE INDEX IF NOT EXISTS idx_fila_status ON fila(status, pos);
CREATE TABLE IF NOT EXISTS login_falhas (ip TEXT NOT NULL, t INTEGER NOT NULL);
