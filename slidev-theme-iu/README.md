# slidev-theme-iu

A Slidev theme extracted from the IU Group corporate PowerPoint template
(`IUG_PPT_Master_Update_EN_V01.pptx`).

## Using this theme

Reference the theme by its **relative path** from your deck's `content/slides.md`:

```yaml
---
theme: ../../../slidev-theme-iu
---
```

The relative path depends on your deck location. If your deck lives at:

```
D:\Archive\03_Freizeit\Projects\slidecraft-slide-decks\<deck-name>\content\slides.md
```

then the path from `content/` up to `Projects/` is three levels (`../../..`), making
the full reference `../../../slidev-theme-iu`.

Alternatively, use the deck's `package.json` to declare a local dependency:

```json
{
  "dependencies": {
    "slidev-theme-iu": "file:../../slidev-theme-iu"
  }
}
```

Then reference it as `theme: slidev-theme-iu` in frontmatter.

## Starting the example

```bash
cd D:\Archive\03_Freizeit\Projects\slidev-theme-iu
npm install
npx @slidev/cli example.md
```

## Regenerating from the source PPTX

The source file lives in the test deck's resources folder:

```
D:\Archive\03_Freizeit\Projects\slidecraft-slide-decks\slidecraft-IUG-test-deck\resources\IUG_PPT_Master_Update_EN_V01.pptx
```

Run the full extraction pipeline from the `slidecraft` plugin repo:

```bash
cd D:\archive\03_freizeit\projects\slidecraft

# 1. Extract theme structure + colors + fonts
python slidecraft/scripts/extract-pptx-theme.py \
  --pptx "D:\Archive\03_Freizeit\Projects\slidecraft-slide-decks\slidecraft-IUG-test-deck\resources\IUG_PPT_Master_Update_EN_V01.pptx" \
  --theme-dir "D:\Archive\03_Freizeit\Projects\slidev-theme-iu"

# 2. Extract/download fonts
python slidecraft/scripts/extract-fonts.py \
  --pptx "D:\Archive\03_Freizeit\Projects\slidecraft-slide-decks\slidecraft-IUG-test-deck\resources\IUG_PPT_Master_Update_EN_V01.pptx" \
  --theme-dir "D:\Archive\03_Freizeit\Projects\slidev-theme-iu"

# 3. Extract media assets and SVG shapes
python slidecraft/scripts/extract-assets.py \
  --pptx "D:\Archive\03_Freizeit\Projects\slidecraft-slide-decks\slidecraft-IUG-test-deck\resources\IUG_PPT_Master_Update_EN_V01.pptx" \
  --theme-dir "D:\Archive\03_Freizeit\Projects\slidev-theme-iu"

# 4. Generate Vue layout files
python slidecraft/scripts/generate-layouts.py \
  --manifest "D:\Archive\03_Freizeit\Projects\slidev-theme-iu\theme-manifest.json" \
  --shapes-index "D:\Archive\03_Freizeit\Projects\slidev-theme-iu\assets-shapes.json" \
  --out "D:\Archive\03_Freizeit\Projects\slidev-theme-iu\layouts-generated"
```

## Corporate template

Derived from: **IU Group Presentation Master** (`IUG_PPT_Master_Update_EN_V01.pptx`)

- Primary color: `#1D1D1F` (near-black)
- Accent: `#0BF000` (IU green)
- Fonts: Source Sans Pro (headings + body), Fira Code (mono)
- 24 layouts extracted, mapped to Slidev layout names

## Structure

```
slidev-theme-iu/
├── layouts/            # Hand-authored base Vue layouts
├── layouts-generated/  # Auto-generated Vue layouts from PPTX shapes
├── components/         # Shared Vue components
├── public/             # Static assets (logos, images, shapes)
│   └── assets/
├── theme-manifest.json # Source-of-truth layout/color/font metadata
├── assets-media.json   # Extracted media asset index
├── assets-shapes.json  # Extracted SVG shape index
├── style.css           # Global theme styles
├── _fonts.css          # Font-face declarations
├── global-bottom.vue   # Persistent logo overlay (user-edited)
├── uno.config.ts       # UnoCSS configuration
└── example.md          # Quick-start example deck
```
