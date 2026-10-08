# commandcode-skills — paylasim noktasi

Skill'ler artik **hizmet ettikleri MCP deposunun altinda** (`skills/`) durur:

| Skill | Nerede | Bağlı olduğu MCP |
|---|---|---|
| makale-translation | [makale](https://github.com/ozbayenes123-ops/makale) `skills/` | `makale` |
| isnad, isnad-atiyaz, isnad-kunye, isnad-word | [bridge-mcp](https://github.com/ozbayenes123-ops/bridge-mcp) `skills/` | `bridge` (+ `zotero`, `shamela`) |
| dilekce-yazimi | [yargi-mcp](https://github.com/ozbayenes123-ops/yargi-mcp) `skills/` | `yargi` (+ `makale` export) |

## Başkaları nasıl faydalanır?

1. İlgili MCP deposunu klonlayın (üstteki tablo) — `scripts/` yerine `skills/` altı hazır gelir.
2. Skill'i istediğiniz araca taşıyın: `SKILLS-COMPAT.md` (Hermes / Claude Code / Codex / ChatGPT hedef yolları).
3. Tüm stack'i tek hamlede kurmak için: [cmdc-stack](https://github.com/ozbayenes123-ops/cmdc-stack) `scripts/install.ps1`.

Bu depo yalnızca **bu yönlendirme + kurulum yardımı** için durur; skill içeriği taşınmıştır.
