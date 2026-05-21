<template>
  <div class="slidev-layout iu-section">
    <div class="section-number">
      <slot name="number">01</slot>
    </div>
    <div class="section-bars">
      <slot />
    </div>
  </div>
</template>

<style scoped>
/* Kapiteleinstieg Primärfarbe — green primary color background */
.iu-section {
  background-color: var(--iu-green, #0BF000) !important;
  color: var(--iu-black, #1D1D1F) !important;
  height: 100%;
  position: relative;
  overflow: hidden;
  padding: 0 !important;
}

/* Large chapter number — PPTX: 0.80% / -1.57% / 16.14% / 25.66% */
.section-number {
  position: absolute;
  left: 0.80%;
  top: -1.57%;
  width: 16.14%;
  height: 25.66%;
  display: flex;
  align-items: center;
  justify-content: flex-start;
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  color: var(--iu-black, #1D1D1F);
  font-size: 11rem;
  line-height: 0.9;
  z-index: 2;
  overflow: visible;
}

.section-number :deep(p),
.section-number :deep(span),
.section-number :deep(div) {
  font-family: inherit !important;
  font-weight: inherit !important;
  font-size: inherit !important;
  color: inherit !important;
  background: transparent !important;
  margin: 0 !important;
  padding: 0 !important;
  line-height: inherit !important;
}

.section-bars {
  position: absolute;
  inset: 0;
  z-index: 1;
  pointer-events: none;
}

.section-bars :deep(h1) {
  position: absolute;
  left: 0;
  top: 37.31%;
  width: 57.27%;
  height: 8.66%;
  margin: 0 !important;
  padding: 0 1.4rem !important;
  background: var(--iu-white, #FFFFFF) !important;
  color: var(--iu-black, #1D1D1F) !important;
  font-family: 'Source Sans Pro', system-ui, sans-serif !important;
  font-weight: 700 !important;
  font-size: 2.6rem !important;
  line-height: 1 !important;
  text-transform: uppercase !important;
  letter-spacing: 0.005em;
  display: flex !important;
  align-items: center;
  border: none !important;
}

.section-bars :deep(h2) {
  position: absolute;
  left: 0;
  top: 46.91%;
  width: 40.94%;
  height: 8.66%;
  margin: 0 !important;
  padding: 0 1.4rem !important;
  background: var(--iu-white, #FFFFFF) !important;
  color: var(--iu-black, #1D1D1F) !important;
  font-family: 'Source Sans Pro', system-ui, sans-serif !important;
  font-weight: 700 !important;
  font-size: 2.6rem !important;
  line-height: 1 !important;
  text-transform: uppercase !important;
  letter-spacing: 0.005em;
  display: flex !important;
  align-items: center;
  border: none !important;
}

.section-bars :deep(p:empty) {
  display: none;
}
</style>
