<template>
  <div class="slidev-layout iu-margin-wide">
    <div class="title-area">
      <slot name="title" />
    </div>
    <div class="main-area">
      <slot />
    </div>
    <div class="side-area">
      <slot name="side" />
    </div>
    <div class="source-area">
      <slot name="source" />
    </div>
  </div>
</template>

<style scoped>
.iu-margin-wide {
  position: relative;
  overflow: hidden;
  height: 100%;
  background-color: var(--iu-white, #FFFFFF);
  color: var(--iu-black, #1D1D1F);
}

/* Title: pos=(0.46in, 0.49in), size=(7.92×0.91in) */
/* left=3.45%, top=6.53%, w=59.41%, h=12.13% */
.title-area {
  position: absolute;
  left: 3.45%;
  top: 6.53%;
  width: 59.41%;
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

/* Main content: pos=(0.48in, 1.67in), size=(7.89×5.23in) */
/* left=3.60%, top=22.27%, w=59.19%, h=69.73% */
.main-area {
  position: absolute;
  left: 3.60%;
  top: 22.27%;
  width: 59.19%;
  height: 69.73%;
  overflow: hidden;
}

.main-area :deep(p) {
  font-size: 1.05rem;
  line-height: 1.6;
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.main-area :deep(ul),
.main-area :deep(ol) {
  font-size: 1.05rem;
  line-height: 1.7;
  padding-left: 1.5em;
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.main-area :deep(li) {
  margin-bottom: 0.3em;
}

.main-area :deep(li::marker) {
  color: var(--iu-green, #0BF000);
}

.main-area :deep(strong) {
  font-weight: 700;
}

/* Wide side column: pos=(8.82in, 1.67in), size=(3.70×5.23in) */
/* left=66.17%, top=22.27%, w=27.76%, h=69.73% */
.side-area {
  position: absolute;
  left: 66.17%;
  top: 22.27%;
  width: 27.76%;
  height: 69.73%;
  padding-left: 0.75rem;
  border-left: 1px solid var(--iu-gray-med, #C2C2C8);
  overflow: hidden;
}

.side-area :deep(p) {
  font-size: 0.8rem;
  line-height: 1.5;
  color: var(--iu-gray-dark, #575E62);
  margin-top: 0;
  margin-bottom: 0.4rem;
}

.side-area :deep(em) {
  font-style: italic;
  color: var(--iu-gray-dark, #575E62);
}

.side-area :deep(ul),
.side-area :deep(ol) {
  font-size: 0.8rem;
  line-height: 1.5;
  padding-left: 1.2em;
  margin-top: 0;
  margin-bottom: 0.4rem;
  color: var(--iu-gray-dark, #575E62);
}

.side-area :deep(li) {
  margin-bottom: 0.2em;
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
