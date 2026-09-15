# commandcode-skills

Kişisel skill seti: Zotero'dan **İSNAD 2. Edisyon** künyesi üretir ve açık Word
belgesine gerçek dipnot / kaynakça olarak ekler.

## Skill'ler

| Skill | Ne yapar | Bağımlılık |
|---|---|---|
| `isnad` | Künye üretimi + Word'e atıf ekleme akışını yönetir; Zotero-farkındalıklı (önceki atıfları tarar, kısa formu otomatik seçer) | Zotero MCP, isteğe bağlı bridge MCP, pywin32 |
| `isnad-word` | Kanonik betik (`scripts/isnad_word.py`): dipnot/kaynakça ekleme, `verify`/`fix`, RIS/CSL-JSON dışa aktarma | pywin32 + Word |
| `isnad-kunye` | Yalnızca künye üretimi (dipnot / kaynakça / metin-içi), Word gerekmez | Zotero MCP |
| `isnad-atiyaz` | Word MCP yolu ile dipnot ekleme (Zotero-Refresh uyumlu alternatif yol) | word MCP, Zotero MCP |

## Kurulum

```powershell
git clone https://github.com/ozbayenes123-ops/commandcode-skills.git
cd commandcode-skills
.\install.ps1                  # %USERPROFILE%\.commandcode\skills altına kopyalar
.\install.ps1 -Force           # var olan kurulumun üzerine yazar
.\install.ps1 -Link            # kopyalamak yerine junction oluşturur (geliştirme için)
.\install.ps1 -Target <dizin>  # başka bir skills köküne kurar (deneme için)
```

Kurulumdan sonra Command Code'u yeniden başlatın; skill'ler `/isnad`,
`/isnad-word`, `/isnad-kunye`, `/isnad-atiyaz` olarak görünür.

## Ön koşullar

- **Windows + Microsoft Word**: dipnot ekleme COM (pywin32) üzerinden yapılır
- `pip install pywin32`
- **Zotero masaüstü** açık ve `zotero` MCP sunucusu bağlı (künye kaynağı)
- İsteğe bağlı: `bridge` MCP (`citation_search` + `isnad_kunye` ile tek adımda arama
  ve künye), `word` MCP (yalnızca `isnad-atiyaz` yolu için)

## İSNAD kaynakları

`isnad` ve `isnad-kunye` kural dosyası (`references/isnad-kurallari.md`),
`%USERPROFILE%\isnad-resources\` klasöründeki İSNAD 2. Edisyon Zotero CSL
dosyalarına ve örnek tablolara atıf yapar (`isnad-dipnotlu.csl`,
`isnad-metinici.csl`, `ornek-tablolar.draft.txt`). Bu materyaller İSNAD projesine
aittir ve bu depoda dağıtılmaz; ilgili dosyaları kendi kaynağınızdan temin edip
Zotero'ya kurmanız gerekir.

## Doğrulama

```powershell
python -m pytest .\isnad-word\tests
python .\isnad-word\scripts\isnad_word.py --version
```

## Sürümler

- `isnad-word/CHANGELOG.md` betiğin sürüm geçmişini tutar (kanonik sürüm: v2.0.2).
