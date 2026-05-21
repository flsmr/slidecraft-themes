# slidecraft-themes

Workspace for every Slidev theme generated from a corporate PowerPoint
template by the [slidecraft](https://github.com/flsmr/slidecraft) plugin.

One subfolder per theme. Each subfolder is a self-contained Slidev theme
package (`package.json`, `style.css`, `layouts/`, `public/`, …) that can
be referenced from a deck via a relative path:

```yaml
---
theme: ../../../slidecraft-themes/slidev-theme-iu
---
```

## Themes

| Folder | Source PPTX | Notes |
|---|---|---|
| `slidev-theme-iu/` | `IUG_PPT_Master_Update_EN_V01.pptx` | IU Internationale Hochschule corporate theme. Hand-written `layouts/` (reference, SSIM ~0.97) + `layouts-generated/` (auto-output, in progress per T-09). |

## Adding a new theme

Use the slidecraft plugin's init skill from a Claude Code session:

```
/slidecraft:new-theme acme --from-pptx D:\path\to\acme-template.pptx
```

That creates `slidecraft-themes/slidev-theme-acme/`, runs the full
extraction pipeline (theme → fonts → assets → layouts → test deck), and
commits the result to this workspace.

## Structure of each theme

```
slidev-theme-<name>/
├── theme-manifest.json    ← extracted from the PPTX (source of truth)
├── layouts/               ← hand-written or generated Vue layouts
├── layouts-generated/     ← *generated*, kept alongside for diffing
├── components/            ← shared Vue components (e.g. TiltedFrame)
├── public/
│   ├── assets/
│   │   ├── media/         ← every image copied from ppt/media/
│   │   └── shapes/        ← every custGeom shape as standalone SVG
│   └── fonts/             ← woff2 files referenced from _fonts.css
├── _fonts.css             ← @font-face declarations
├── style.css              ← global theme styles
├── global-bottom.vue      ← persistent logo / footer
├── package.json           ← Slidev theme package metadata
└── README.md              ← derivation + usage notes
```
