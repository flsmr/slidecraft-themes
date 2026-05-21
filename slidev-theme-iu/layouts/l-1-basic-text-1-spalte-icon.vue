<template>
  <div class="slidev-layout iu-icon">
    <div class="title-area">
      <slot name="title" />
    </div>
    <div class="icon-area">
      <slot name="icon" />
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
.iu-icon {
  position: relative;
  overflow: hidden;
  height: 100%;
  background-color: var(--iu-white, #FFFFFF);
  color: var(--iu-black, #1D1D1F);
}

/* Title: pos=(0.46in, 0.49in), size=(9.28×0.91in) */
/* left=3.45%, top=6.53%, w=69.62%, h=12.13% */
.title-area {
  position: absolute;
  left: 3.45%;
  top: 6.53%;
  width: 69.62%;
  height: 12.13%;
}

.title-area :deep(h1) {
  font-family: 'Source Sans 3', 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 2rem;
  line-height: 1.25;
  color: var(--iu-black, #1D1D1F) !important;
  margin: 0 !important;
  padding-bottom: 0.5rem;
  border-bottom: none !important;
}

/* Icon area: pos=(0.48in, 2.41in), size=(3.21×3.79in) */
/* left=3.60%, top=32.13%, w=24.08%, h=50.53% */
.icon-area {
  position: absolute;
  left: 3.60%;
  top: 32.13%;
  width: 24.08%;
  height: 50.53%;
  display: flex;
  align-items: flex-start;
  justify-content: center;
}

.icon-area :deep(img) {
  max-width: 100%;
  max-height: 100%;
  object-fit: contain;
}

/* Content: pos=(4.34in, 2.41in), size=(5.39×4.59in) */
/* left=32.56%, top=32.13%, w=40.44%, h=61.20% */
.content-area {
  position: absolute;
  left: 32.56%;
  top: 32.13%;
  width: 40.44%;
  height: 61.20%;
  overflow: hidden;
}

.content-area :deep(p) {
  font-size: 1.05rem;
  line-height: 1.6;
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.content-area :deep(ul),
.content-area :deep(ol) {
  font-size: 1.05rem;
  line-height: 1.7;
  padding-left: 1.5em;
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.content-area :deep(li) {
  margin-bottom: 0.3em;
}

.content-area :deep(li::marker) {
  color: var(--iu-green, #0BF000);
}

.content-area :deep(strong) {
  font-weight: 700;
}

/* Source: pos=(0.48in, 7.01in), size=(12.36×0.25in) */
/* left=3.60%, top=93.47%, w=92.72%, h=3.33% */
.source-area {
  position: absolute;
  left: 3.60%;
  top: 93.47%;
  width: 92.72%;
  height: 3.33%;
  display: flex;
  align-items: center;
}

.source-area :deep(p) {
  font-size: 0.6rem;
  color: var(--iu-gray-dark, #575E62);
  margin: 0;
  line-height: 1.2;
}
</style>
