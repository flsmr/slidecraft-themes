<template>
  <div class="slidev-layout iu-default">
    <div class="title-area">
      <slot name="title" />
    </div>
    <div class="content-area">
      <slot />
    </div>
    <div class="source-area">
      <slot name="source" />
    </div>
  </div>
</template>

<style scoped>
.iu-default {
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
  display: flex;
  align-items: flex-start;
}

.title-area :deep(h1) {
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 1.85rem;
  line-height: 1.15;
  color: var(--iu-black, #1D1D1F) !important;
  margin: 0 !important;
  padding: 0 !important;
  text-transform: uppercase;
  letter-spacing: 0.005em;
  border: none !important;
  background: transparent !important;
}

/* Content — PPTX: 3.63% / 22.20% / 69.40% / 69.79% */
.content-area {
  position: absolute;
  left: 3.63%;
  top: 22.20%;
  width: 69.40%;
  height: 69.79%;
  overflow: hidden;
  color: var(--iu-black, #1D1D1F);
}

.content-area :deep(h2) {
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 600;
  font-size: 1.25rem;
  color: var(--iu-gray-dark, #575E62);
  margin: 0 0 0.55rem 0;
}

.content-area :deep(p) {
  font-size: 1rem;
  line-height: 1.55;
  margin: 0 0 0.5rem 0;
}

.content-area :deep(ul),
.content-area :deep(ol) {
  font-size: 1rem;
  line-height: 1.65;
  padding-left: 1.4em;
  margin: 0 0 0.5rem 0;
}

.content-area :deep(li) {
  margin-bottom: 0.25em;
}

.content-area :deep(li::marker) {
  color: var(--iu-green, #0BF000);
}

.content-area :deep(strong) {
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
