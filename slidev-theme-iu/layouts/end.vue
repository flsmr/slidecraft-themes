<template>
  <div class="slidev-layout iu-end">
    <!-- Gray title bar: PPTX placeholder at 0% / 41.93% / 30.31% w / 16.12% h.
         In the corporate layout the bar visibly grows with the text, so we
         keep the top/height fixed and let the inline title shrink-wrap. -->
    <div class="end-title-bar">
      <slot />
    </div>
    <div class="end-address">
      <slot name="address" />
    </div>
    <div class="end-contact">
      <slot name="contact" />
    </div>
  </div>
</template>

<style scoped>
.iu-end {
  background-color: var(--iu-black, #1D1D1F) !important;
  color: var(--iu-white, #FFFFFF) !important;
  height: 100%;
  position: relative;
  overflow: hidden;
  padding: 0 !important;
}

/* Title strip: anchored left, sized vertically to the placeholder, width auto-fits text */
.end-title-bar {
  position: absolute;
  left: 0;
  top: 41.93%;
  height: 16.12%;
  max-width: 96%;
  z-index: 1;
  display: inline-flex;
  align-items: stretch;
}

.end-title-bar :deep(h1) {
  font-family: 'Source Sans Pro', system-ui, sans-serif !important;
  font-weight: 700 !important;
  font-size: 5rem !important;
  line-height: 1 !important;
  color: var(--iu-black, #1D1D1F) !important;
  background: var(--iu-gray-lighter, #C2C2C8) !important;
  margin: 0 !important;
  padding: 0 2rem !important;
  display: flex !important;
  align-items: center;
  height: 100%;
  text-transform: uppercase;
  letter-spacing: 0.005em;
  border: none !important;
  white-space: nowrap;
}

/* Address column — PPTX: 3.66% / 75.27% / 45.21% / 19.11% */
.end-address {
  position: absolute;
  left: 3.66%;
  top: 75.27%;
  width: 45.21%;
  height: 19.11%;
  z-index: 1;
  color: var(--iu-white, #FFFFFF) !important;
}

.end-address :deep(p) {
  font-family: 'Source Sans Pro', system-ui, sans-serif !important;
  font-size: 1rem !important;
  font-weight: 400;
  line-height: 1.5 !important;
  color: var(--iu-white, #FFFFFF) !important;
  margin: 0 !important;
  white-space: pre-line;
}

/* Contact column — PPTX: 52.81% / 75.35% / 43.56% / 19.11% */
.end-contact {
  position: absolute;
  left: 52.81%;
  top: 75.35%;
  width: 43.56%;
  height: 19.11%;
  z-index: 1;
  color: var(--iu-white, #FFFFFF) !important;
}

.end-contact :deep(p) {
  font-family: 'Source Sans Pro', system-ui, sans-serif !important;
  font-size: 1rem !important;
  font-weight: 400;
  line-height: 1.5 !important;
  color: var(--iu-white, #FFFFFF) !important;
  margin: 0 !important;
  white-space: pre-line;
}

/* Strip the global underline + green hover off auto-linked emails */
.end-contact :deep(a),
.end-address :deep(a) {
  color: inherit !important;
  text-decoration: none !important;
}
</style>
