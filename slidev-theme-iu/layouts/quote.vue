<template>
  <div class="slidev-layout iu-quote">
    <div class="quote-content">
      <slot />
    </div>
  </div>
</template>

<style scoped>
.iu-quote {
  background-color: var(--iu-white);
  color: var(--iu-black);
  height: 100%;
  position: relative;
  overflow: hidden;
}

/* Green vertical line — PPTX slideLayout43 "Zitat": x=21.47% y=11.48% cx=0% cy=89.24%,
   rot=-240000 (-4°). OOXML rotates around the centre of the bounding box, and CSS
   transform: rotate() also defaults to transform-origin: 50% 50% (centre). Removing
   any explicit transform-origin override keeps both systems in agreement. */
/* A zero-width shape with border becomes a line; we use a thin div instead */
.iu-quote::before {
  content: '';
  position: absolute;
  left: 21.46%;
  top: 11.47%;
  width: 0;
  height: 89.20%;
  border-left: 6pt solid var(--iu-green);
  transform: rotate(-4deg);
  /* transform-origin intentionally omitted — default 50% 50% matches OOXML centre-pivot */
  z-index: 0;
  pointer-events: none;
}

/* Quote text area — pos=(0.48in, 1.66in), size=(12.36×5.35in) */
/* left=3.60%, top=22.13%, w=92.72%, h=71.33% */
.quote-content {
  position: absolute;
  left: 3.60%;
  top: 22.13%;
  width: 92.72%;
  height: 71.33%;
  z-index: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.quote-content :deep(h1) {
  font-family: var(--font-heading, 'Source Sans Pro', system-ui, sans-serif);
  font-weight: 700;
  font-size: 2rem;
  line-height: 1.3;
  color: var(--iu-black);
  margin: 0 0 0.75rem 0;
}

.quote-content :deep(p) {
  font-family: var(--font-body, 'Source Sans Pro', system-ui, sans-serif);
  font-size: 1.3rem;
  line-height: 1.6;
  color: var(--iu-black);
  margin: 0 0 0.5rem 0;
}

.quote-content :deep(blockquote) {
  font-family: var(--font-body, 'Source Sans Pro', system-ui, sans-serif);
  font-size: 1.5rem;
  line-height: 1.5;
  color: var(--iu-black);
  font-style: italic;
  margin: 0;
  padding: 0;
  border: none;
}

.quote-content :deep(em) {
  font-style: italic;
}

.quote-content :deep(strong) {
  font-weight: 700;
}
</style>
