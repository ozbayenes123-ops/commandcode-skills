Konum notu: skill'ler MCP depolarının `skills/` altındadır (bkz. README tablosu).

# SKILLS-COMPAT — skill'leri diger uygulamalara tasma

Bu depodaki skill'ler (isnad, isnad-atiyaz, isnad-kunye, isnad-word, dilekce-yazimi, makale-translation)
standart `SKILL.md` bicimindedir; kurulum = klasoru hedefe kopyalamak.

| Uygulama | Hedef | Not |
|---|---|---|
| Hermes | `%LOCALAPPDATA%\hermes\skills\<kategori>\<skill>\` | orijinal hedef; kategori korunur |
| Claude Code | `%USERPROFILE%\.claude\skills\<skill>\` | SKILL.md aynen calisir |
| Codex CLI | `%USERPROFILE%\.codex\prompts\<skill>.md` veya AGENTS.md referansi | skill kavrami yok; govde yapistirilir |
| ChatGPT | Custom GPT / Project talimatlari | SKILL.md govdesi bilgi olarak eklenir |

`install.ps1` yalnizca CommandCode (%USERPROFILE%\.commandcode\skills) kurar.
