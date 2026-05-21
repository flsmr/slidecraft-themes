<script setup lang="ts">
/**
 * IU tilted "folder-tab" frame for cover slides.
 *
 * PPTX source (slideLayout8.xml, "1_Titel Schwarz | mittel"):
 *   "Rechteck 16"          — prstGeom rect, rot=-240000, 24.12%/24.50%/81.70%/90.38%
 *   "Textplatzhalter 14"   — custGeom (cubic-bezier path),  rot=-240000,
 *                            22.31%/22.36%/21.39%/6.07%, lvl1 sz=1220 (12.2pt) bold
 *
 * Both shapes rotate -4° around their respective top-left corners; because we
 * apply that rotation with shared origins, the chip's bottom-right diagonal
 * lines up with the frame's top-left corner exactly as in the PPTX. The chip
 * outline comes straight from the layout's <a:custGeom>, so the rounded
 * corners and diagonal "step" are preserved.
 *
 * Text is HTML overlaid on top of the SVG chip — *not* drawn inside the SVG.
 * SVG's `font-size` is overridden by Slidev's slide-level CSS cascade, so any
 * value we put on `<text>` is ignored; HTML text uses ordinary rem/em sizing
 * that stays predictable.
 */

withDefaults(defineProps<{
  label?: string
  color?: string
  textColor?: string
}>(), {
  label: 'Example',
  color: '#FFFFFF',
  textColor: '#1D1D1F',
})

// Exact path from PPTX <a:custGeom> for "Textplatzhalter 14".
// viewBox uses the path's own coordinate space (w=10481728, h=1674234 EMU).
const chipPath = [
  'M 0 400006',
  'C 3175 173254 213520 1009 421222 1009',
  'L 8906928 1009',
  'C 9120980 4184 9359900 -42646 9531350 250781',
  'L 10099675 1367312',
  'C 10198100 1578189 10327480 1652009 10481728 1674234',
  'L 278347 1671059',
  'L 3175 1672112',
  'C 2117 1335918 1058 736200 0 400006',
  'Z',
].join(' ')
</script>

<template>
  <!-- Group fills the slide; the children rotate around their own top-lefts. -->
  <div class="tilted-group" aria-hidden="true">
    <!-- Frame outline (plain rect, rotated -4° around its top-left). -->
    <div class="frame-rect" :style="{ borderColor: color }"></div>

    <!-- Chip: SVG shape + HTML text overlay, both rotated -4° around the
         frame's top-left point. The chip's transform-origin is set to the
         frame's top-left expressed in chip-local %: (8.46%, 35.25%). -->
    <div class="chip">
      <svg
        class="chip-svg"
        viewBox="0 0 10481728 1674234"
        preserveAspectRatio="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path :d="chipPath" :fill="color" />
      </svg>
      <div class="chip-text" :style="{ color: textColor }">{{ label }}</div>
    </div>
  </div>
</template>

<style scoped>
.tilted-group {
  position: absolute;
  inset: 0;
  pointer-events: none;
  z-index: 0;
}

/* Frame — PPTX 24.12% / 24.50% / 81.70% / 90.38%, rot=-240000 (-4°).
   OOXML rotates shapes around the CENTER of their bounding box, so we
   match that by leaving transform-origin at its default of 50% 50%. */
.frame-rect {
  position: absolute;
  left: 24.12%;
  top: 24.50%;
  width: 81.70%;
  height: 90.38%;
  border-width: 0.32rem;
  border-style: solid;
  background: transparent;
  transform: rotate(-4deg);
  box-sizing: border-box;
}

/* Chip — PPTX 22.31% / 22.36% / 21.39% / 6.07%, also rot=-4°.
   Rotates around its OWN center, independent of the frame. */
.chip {
  position: absolute;
  left: 22.31%;
  top: 22.36%;
  width: 21.39%;
  height: 6.07%;
  transform: rotate(-4deg);
}

.chip-svg {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  overflow: visible;
}

/* Text occupies the flat part of the chip (left ~4% to where the diagonal
   step starts at ~85%); 12.2 pt PPTX → 0.7rem at Slidev's slide font scale. */
.chip-text {
  position: absolute;
  left: 4%;
  top: 0;
  width: 80%;
  height: 100%;
  display: flex;
  align-items: center;
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 0.7rem;
  line-height: 1;
  white-space: nowrap;
  overflow: hidden;
}
</style>
