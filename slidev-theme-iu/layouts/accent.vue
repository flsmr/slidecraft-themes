<template>
  <div class="slidev-layout iu-accent">
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
.iu-accent {
  position: relative;
  overflow: hidden;
  height: 100%;
  background-color: var(--iu-white, #FFFFFF);
  color: var(--iu-black, #1D1D1F);
}

/* Title line 1: pos=(0.34in, 0.38in), size=(5.49×0.51in) */
/* left=0.34/13.33*100=2.55%, top=0.38/7.50*100=5.07%, w=5.49/13.33*100=41.19%, h=0.51/7.50*100=6.80% */
/* Title line 2: pos=(0.34in, 0.95in), size=(5.75×0.51in) */
/* left=2.55%, top=0.95/7.50*100=12.67%, w=5.75/13.33*100=43.14%, h=6.80% */
.title-area {
  position: absolute;
  left: 2.55%;
  top: 5.07%;
  width: 43.14%;
}

.title-area :deep(h1) {
  font-family: 'Source Sans 3', 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 1.6rem;
  line-height: 1.2;
  color: var(--iu-black, #1D1D1F);
  background-color: var(--iu-gray-light, #E0E0E3);
  text-transform: uppercase;
  letter-spacing: 0.03em;
  margin: 0 0 0.35rem 0;
  padding: 0.25rem 0.6rem;
  display: inline-block;
}

.title-area :deep(h2) {
  font-family: 'Source Sans 3', 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 1.35rem;
  line-height: 1.2;
  color: var(--iu-black, #1D1D1F);
  background-color: var(--iu-gray-light, #E0E0E3);
  text-transform: uppercase;
  letter-spacing: 0.03em;
  margin: 0;
  padding: 0.25rem 0.6rem;
  display: inline-block;
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

.content-area :deep(h3) {
  font-family: 'Source Sans 3', 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 600;
  font-size: 1.2rem;
  color: var(--iu-gray-dark, #575E62);
  margin-top: 0;
  margin-bottom: 0.5rem;
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

.content-area :deep(code) {
  background: var(--iu-gray-light, #E0E0E3);
  padding: 0.1em 0.35em;
  border-radius: 3px;
  font-size: 0.9em;
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
