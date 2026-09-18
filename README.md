# Aspects in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **aspects** beyond Pre/Post:
`Size`, `Pack`, `Default_Value`, `Static_Predicate`, and `Inline`.
For humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| `Size` | `Byte` |
| `Pack` | `Flags` |
| `Default_Value` | `Status` |
| `Static_Predicate` | `Warm_Or_Ready` |
| `Inline` | `Square`, `Touch` |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 4).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
