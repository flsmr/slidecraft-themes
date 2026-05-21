<script setup>
import TiltedFrame from '../components/TiltedFrame.vue'

defineProps({
  label: { type: String, default: 'Example' },
})
</script>

<template>
  <div class="slidev-layout iu-titel-schwarz-mittel">
    <!-- Tilted folder-shape frame + chip drawn as one rotated SVG -->
    <TiltedFrame :label="label" />

    <!-- Small EXAMPLE chip above the title (axis-aligned, gray) -->
    <div class="chip-above">
      <slot name="col3">Example</slot>
    </div>

    <!-- Title strip (h1) -->
    <div class="title-bar">
      <slot name="title" />
    </div>

    <!-- Subtitle strip (default slot) -->
    <div class="subtitle-bar">
      <slot />
    </div>

    <!-- Small label below the subtitle -->
    <div class="chip-below">
      <slot name="footer">Example</slot>
    </div>
  </div>
</template>

<style scoped>
.iu-titel-schwarz-mittel {
  background-color: var(--iu-black, #1D1D1F);
  color: var(--iu-white, #FFFFFF);
  height: 100%;
  position: relative;
  overflow: hidden;
  padding: 0 !important;
}

/* Gray "EXAMPLE" chip — PPTX: 0% / 37.38% / 21.46% / 3.87% */
.chip-above {
  position: absolute;
  left: 0;
  top: 37.38%;
  width: 21.46%;
  height: 3.87%;
  background: var(--iu-gray-lighter, #C2C2C8);
  color: var(--iu-black, #1D1D1F);
  display: flex;
  align-items: center;
  padding: 0 0.9rem;
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 0.6rem;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  z-index: 1;
}

.chip-above :deep(*) {
  font-family: inherit;
  font-weight: inherit;
  font-size: inherit;
  color: inherit;
  background: transparent;
  margin: 0;
  padding: 0;
  text-transform: inherit;
  letter-spacing: inherit;
}

/* Main title bar (h1) — PPTX: 0% / 42.51% / max 91.92% / 11.70% */
.title-bar {
  position: absolute;
  left: 0;
  top: 42.51%;
  height: 11.70%;
  max-width: 91.92%;
  z-index: 1;
}

.title-bar :deep(h1) {
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 3.4rem;
  line-height: 1;
  color: var(--iu-black, #1D1D1F) !important;
  background: var(--iu-white, #FFFFFF) !important;
  margin: 0 !important;
  padding: 0 1.5rem !important;
  display: flex !important;
  align-items: center;
  height: 100%;
  text-transform: uppercase;
  letter-spacing: 0.01em;
  border: none !important;
}

/* Subtitle bar — PPTX: 0% / 55.36% / 96.51% / 11.70% */
.subtitle-bar {
  position: absolute;
  left: 0;
  top: 55.36%;
  height: 11.70%;
  max-width: 96.51%;
  z-index: 1;
}

.subtitle-bar :deep(p),
.subtitle-bar :deep(div),
.subtitle-bar :deep(span) {
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 3.4rem;
  line-height: 1;
  color: var(--iu-black, #1D1D1F) !important;
  background: var(--iu-white, #FFFFFF) !important;
  margin: 0 !important;
  padding: 0 1.5rem !important;
  display: flex !important;
  align-items: center;
  height: 100%;
  text-transform: uppercase;
  letter-spacing: 0.01em;
}

.subtitle-bar :deep(p:empty) {
  display: none;
}

/* Small label below the subtitle — PPTX: 1.86% / 72.65% / 20.10% / 4.26% */
.chip-below {
  position: absolute;
  left: 1.86%;
  top: 72.65%;
  width: 20.10%;
  height: 4.26%;
  color: var(--iu-white, #FFFFFF);
  display: flex;
  align-items: center;
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 400;
  font-size: 0.75rem;
  z-index: 1;
}

.chip-below :deep(*) {
  font-family: inherit;
  font-weight: inherit;
  font-size: inherit;
  color: inherit;
  background: transparent;
  margin: 0;
  padding: 0;
}
</style>
