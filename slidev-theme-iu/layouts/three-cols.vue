<template>
  <div class="slidev-layout iu-three-cols">
    <div class="title-area">
      <slot />
    </div>
    <div class="col col-1">
      <slot name="col1" />
    </div>
    <div class="col col-2">
      <slot name="col2" />
    </div>
    <div class="col col-3">
      <slot name="col3" />
    </div>
    <div class="source-area">
      <slot name="source" />
    </div>
  </div>
</template>

<style scoped>
.iu-three-cols {
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

/* Col 1: pos=(0.48in, 1.67in), size=(3.86×5.23in) */
/* left=0.48/13.33*100=3.60%, top=22.27%, w=3.86/13.33*100=28.96%, h=69.73% */
.col-1 {
  position: absolute;
  left: 3.60%;
  top: 22.27%;
  width: 28.96%;
  height: 69.73%;
  overflow: hidden;
}

/* Col 2: pos=(4.62in, 1.67in), size=(3.82×5.23in) */
/* left=4.62/13.33*100=34.66%, top=22.27%, w=3.82/13.33*100=28.66%, h=69.73% */
.col-2 {
  position: absolute;
  left: 34.66%;
  top: 22.27%;
  width: 28.66%;
  height: 69.73%;
  overflow: hidden;
}

/* Col 3: pos=(8.71in, 1.67in), size=(3.86×5.23in) */
/* left=8.71/13.33*100=65.34%, top=22.27%, w=28.96%, h=69.73% */
.col-3 {
  position: absolute;
  left: 65.34%;
  top: 22.27%;
  width: 28.96%;
  height: 69.73%;
  overflow: hidden;
}

.col :deep(h2) {
  font-family: 'Source Sans 3', 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 600;
  font-size: 1.1rem;
  color: var(--iu-gray-dark, #575E62);
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.col :deep(p) {
  font-size: 0.95rem;
  line-height: 1.55;
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.col :deep(ul),
.col :deep(ol) {
  font-size: 0.95rem;
  line-height: 1.65;
  padding-left: 1.4em;
  margin-top: 0;
  margin-bottom: 0.5rem;
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
