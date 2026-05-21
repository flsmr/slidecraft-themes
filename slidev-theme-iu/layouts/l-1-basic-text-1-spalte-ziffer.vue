<template>
  <div class="slidev-layout iu-ziffer">
    <div class="number-area">
      <slot name="number" />
    </div>
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
.iu-ziffer {
  position: relative;
  overflow: hidden;
  height: 100%;
  background-color: var(--iu-white, #FFFFFF);
  color: var(--iu-black, #1D1D1F);
}

/* Big green number — PPTX layout: left=3.45%, top=0%, width=7.68%, height=18.66%,
   bodyPr anchor="b" → text vertically aligned to the bottom of the box. */
.number-area {
  position: absolute;
  left: 3.45%;
  top: 0;
  width: 7.68%;
  height: 18.66%;
  z-index: 1;
  overflow: visible;
  display: flex;
  align-items: flex-end;
  justify-content: flex-start;
  line-height: 1;
}

.number-area :deep(p),
.number-area :deep(span) {
  font-family: var(--font-heading, 'Source Sans Pro', system-ui, sans-serif) !important;
  font-weight: 700 !important;
  /* PPTX layout sz="6600" (= 66 pt). */
  font-size: 4.5rem !important;
  line-height: 1 !important;
  color: var(--iu-green, #0BF000) !important;
  background: transparent !important;
  margin: 0 !important;
  padding: 0 !important;
}

/* Title: pos=(1.55in, 0.37in), size=(8.19×0.91in) — next to number */
/* left=11.63%, top=4.93%, w=61.44%, h=12.13% */
.title-area {
  position: absolute;
  left: 11.63%;
  top: 4.93%;
  width: 61.44%;
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

/* Content: pos=(0.48in, 1.67in), size=(9.25×5.23in) */
/* left=3.60%, top=22.27%, w=69.39%, h=69.73% */
.content-area {
  position: absolute;
  left: 3.60%;
  top: 22.27%;
  width: 69.39%;
  height: 69.73%;
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
