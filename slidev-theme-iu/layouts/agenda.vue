<template>
  <div class="slidev-layout iu-agenda">
    <div class="title-area">
      <slot name="title" />
    </div>
    <div class="agenda-table">
      <slot />
    </div>
    <div class="source-area">
      <slot name="source" />
    </div>
  </div>
</template>

<style scoped>
.iu-agenda {
  position: relative;
  overflow: hidden;
  height: 100%;
  background-color: var(--iu-white, #FFFFFF);
  color: var(--iu-black, #1D1D1F);
  padding: 0 !important;
}

/* Title — PPTX: 3.45% / 6.54% / 69.58% / 12.12% */
.title-area {
  position: absolute;
  left: 3.45%;
  top: 6.54%;
  width: 69.58%;
  height: 12.12%;
}

.title-area :deep(h1) {
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 1.85rem;
  line-height: 1.15;
  color: var(--iu-black, #1D1D1F) !important;
  margin: 0 !important;
  text-transform: uppercase;
  letter-spacing: 0.005em;
  border: none !important;
  background: transparent !important;
}

/* Table area — sits in the content region */
.agenda-table {
  position: absolute;
  left: 3.63%;
  top: 22.20%;
  width: 92.74%;
  height: 69.79%;
  overflow: hidden;
}

/* Render the agenda from a markdown table. Each row becomes a chip + label + time. */
.agenda-table :deep(table) {
  width: 100%;
  height: 100%;            /* let the table fill the container so rows can divide evenly */
  border-collapse: collapse;
  table-layout: fixed;
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  color: var(--iu-black, #1D1D1F);
}

.agenda-table :deep(thead) {
  display: none;
}

/* Every body row gets the same fixed height regardless of content,
   so rows with sub-items aren't visually taller than single-line rows. */
.agenda-table :deep(tbody tr) {
  height: 20%;            /* 5 rows × 20% = 100% of table */
  border-top: 1px solid var(--iu-gray-light, #E0E0E3);
}

.agenda-table :deep(tbody tr:last-child) {
  border-bottom: 1px solid var(--iu-gray-light, #E0E0E3);
}

.agenda-table :deep(td) {
  padding: 0.4rem 0.8rem;
  vertical-align: middle;
  background: transparent;
  border: none;
  height: inherit;
}

/* First column = label text */
.agenda-table :deep(td:first-child) {
  font-weight: 700;
  font-size: 1.15rem;
  width: 60%;
  padding-left: 0;
}

/* Second column = chip cell. The cell itself is transparent (so the white
   slide background shows through on both sides and between rows) — only the
   inline child renders the green SQUARE. Vertical padding gives the thick
   white bar between successive chips. */
.agenda-table :deep(td:nth-child(2)) {
  width: 9% !important;
  background-color: transparent !important;
  padding: 0.25rem 0 !important;
  text-align: center !important;
  vertical-align: middle !important;
  border-top: none !important;
  border-bottom: none !important;
}

/* Tell the row border NOT to draw across the chip column so the white gap
   between chips reads as a continuous white channel rather than a thin
   gray line. */
.agenda-table :deep(tbody tr) {
  border-top-color: transparent;
}
.agenda-table :deep(td:first-child),
.agenda-table :deep(td:nth-child(3)) {
  border-top: 1px solid var(--iu-gray-light, #E0E0E3);
}
.agenda-table :deep(tbody tr:first-child td:first-child),
.agenda-table :deep(tbody tr:first-child td:nth-child(3)) {
  border-top: 1px solid var(--iu-gray-light, #E0E0E3);
}

/* The actual green square — sized so it fits 5 rows comfortably in the
   ~70% slide-height table area, with a thick white bar between each chip. */
.agenda-table :deep(td:nth-child(2) strong),
.agenda-table :deep(td:nth-child(2) em),
.agenda-table :deep(td:nth-child(2) span),
.agenda-table :deep(td:nth-child(2) b) {
  display: inline-flex !important;
  align-items: center;
  justify-content: center;
  width: 4.2rem !important;
  height: 4.2rem !important;
  aspect-ratio: 1;
  background-color: var(--iu-green, #0BF000) !important;
  color: var(--iu-black, #1D1D1F) !important;
  font-weight: 700 !important;
  font-style: normal !important;
  font-size: 1.85rem !important;
  line-height: 1 !important;
  padding: 0 !important;
  border-radius: 0;
}

/* Third column = time */
.agenda-table :deep(td:nth-child(3)) {
  width: 34%;
  font-size: 1.05rem;
  color: var(--iu-black, #1D1D1F);
  padding-left: 1.2rem;
}

/* Sub-item (rendered when a row uses a <br> + smaller text style) */
.agenda-table :deep(td:first-child small),
.agenda-table :deep(td:first-child .sub) {
  display: block;
  font-weight: 400;
  font-size: 0.85rem;
  color: var(--iu-black, #1D1D1F);
  margin-top: 0.15rem;
}

/* Source — PPTX: 3.63% / 93.44% / 92.74% / 3.29% */
.source-area {
  position: absolute;
  left: 3.63%;
  top: 93.44%;
  width: 92.74%;
  height: 3.29%;
  display: flex;
  align-items: center;
}

.source-area :deep(p) {
  font-size: 0.55rem;
  color: var(--iu-gray-dark, #575E62);
  margin: 0;
  line-height: 1.2;
}
</style>
