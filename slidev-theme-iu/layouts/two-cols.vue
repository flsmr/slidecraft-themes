<template>
  <div class="slidev-layout iu-two-cols">
    <div class="title-area">
      <slot name="title" />
    </div>
    <div class="col col-left">
      <slot />
    </div>
    <div class="col col-right">
      <slot name="right" />
    </div>
    <div class="source-area">
      <slot name="source" />
    </div>
  </div>
</template>

<style scoped>
.iu-two-cols {
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

/* Left col — PPTX: 3.63% / 22.20% / 44.29% / 69.79% */
.col-left {
  position: absolute;
  left: 3.63%;
  top: 22.20%;
  width: 44.29%;
  height: 69.79%;
  overflow: hidden;
}

/* Right col — PPTX: 50.00% / 22.20% / 44.29% / 69.79% */
.col-right {
  position: absolute;
  left: 50.00%;
  top: 22.20%;
  width: 44.29%;
  height: 69.79%;
  overflow: hidden;
}

.col :deep(h2) {
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 600;
  font-size: 1.15rem;
  color: var(--iu-gray-dark, #575E62);
  margin: 0 0 0.5rem 0;
}

.col :deep(p) {
  font-size: 0.95rem;
  line-height: 1.55;
  margin: 0 0 0.5rem 0;
}

.col :deep(ul),
.col :deep(ol) {
  font-size: 0.95rem;
  line-height: 1.65;
  padding-left: 1.4em;
  margin: 0 0 0.5rem 0;
}

.col :deep(li) {
  margin-bottom: 0.25em;
}

.col :deep(li::marker) {
  color: var(--iu-green, #0BF000);
}

.col :deep(strong) {
  font-weight: 700;
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
