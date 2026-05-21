<template>
  <div class="slidev-layout iu-side-note">
    <div class="title-area">
      <slot />
    </div>
    <div class="main-area">
      <slot name="main" />
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
.iu-side-note {
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

/* Main content: pos=(0.48in, 1.67in), size=(9.25×5.23in) */
/* left=3.60%, top=22.27%, w=9.25/13.33*100=69.39%, h=69.73% */
.main-area {
  position: absolute;
  left: 3.60%;
  top: 22.27%;
  width: 69.39%;
  height: 69.73%;
  overflow: hidden;
}

.main-area :deep(h2) {
  font-family: 'Source Sans 3', 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 600;
  font-size: 1.35rem;
  color: var(--iu-gray-dark, #575E62);
  margin-top: 0;
  margin-bottom: 0.6rem;
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

/* Side note: pos=(10.76in, 1.67in), size=(2.09×5.23in) */
/* left=10.76/13.33*100=80.72%, top=22.27%, w=2.09/13.33*100=15.68%, h=69.73% */
.side-area {
  position: absolute;
  left: 80.72%;
  top: 22.27%;
  width: 15.68%;
  height: 69.73%;
  padding-left: 0.75rem;
  border-left: 1px solid var(--iu-gray-med, #C2C2C8);
  overflow: hidden;
}

.side-area :deep(h2),
.side-area :deep(h3) {
  font-family: 'Source Sans 3', 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 600;
  font-size: 0.85rem;
  color: var(--iu-gray-dark, #575E62);
  margin-top: 0;
  margin-bottom: 0.4rem;
  text-transform: uppercase;
  letter-spacing: 0.04em;
}

.side-area :deep(p) {
  font-size: 0.8rem;
  line-height: 1.5;
  color: var(--iu-gray-dark, #575E62);
  margin-top: 0;
  margin-bottom: 0.4rem;
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
