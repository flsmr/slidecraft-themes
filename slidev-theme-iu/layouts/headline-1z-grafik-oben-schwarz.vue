<template>
  <div class="slidev-layout iu-headline-1z-schwarz">
    <!-- Black top area with headline bars -->
    <div class="top-area">
      <div class="headline-bars">
        <slot name="title" />
      </div>
    </div>
    <!-- Three content columns below -->
    <div class="columns-area">
      <div class="col">
        <slot />
      </div>
      <div class="col">
        <slot name="col2" />
      </div>
      <div class="col">
        <slot name="col3" />
      </div>
    </div>
    <div class="source-area">
      <slot name="source" />
    </div>
  </div>
</template>

<style scoped>
.iu-headline-1z-schwarz {
  position: relative;
  overflow: hidden;
  height: 100%;
  background-color: var(--iu-white, #FFFFFF);
  color: var(--iu-black, #1D1D1F);
}

/* Black top area — covers top ~50% of the slide */
/* In reference: top band is black, containing headline bars and images */
/* pos=(0.00in, 0.00in), size=(13.33×3.63in) → top=0%, height=48.40% */
.top-area {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 48.40%;
  background-color: var(--iu-black, #1D1D1F);
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
}

/* Headline bars — white background strips on the black area */
/* Bar 1: pos=(0.00in, 0.36in), size=(5.67×0.57in) → left=0%, top=4.80%, w=42.53%, h=7.60% */
/* Bar 2: pos=(0.00in, 0.93in), size=(4.37×0.57in) → left=0%, top=12.40%, w=32.78%, h=7.60% */
.headline-bars {
  position: absolute;
  left: 0;
  top: 4.80%;
  width: 42.53%;
  z-index: 1;
}

.headline-bars :deep(h1) {
  font-family: 'Source Sans 3', 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 1.4rem;
  line-height: 1;
  color: var(--iu-black, #1D1D1F) !important;
  background: var(--iu-white, #FFFFFF) !important;
  margin: 0 !important;
  padding: 0.4rem 1rem;
  display: inline-block;
  border: none !important;
  border-bottom: none !important;
}

/* Three columns area — below the black top area */
/* First col: pos=(0.48in, 4.47in), size=(3.82×2.39in) */
/* left=3.60%, top=59.60%, w=28.66%, h=31.87% */
.columns-area {
  position: absolute;
  left: 3.60%;
  top: 59.60%;
  width: 92.72%;
  height: 31.87%;
  display: flex;
  gap: 2%;
}

.col {
  flex: 1;
}

.col :deep(p) {
  font-family: 'Source Sans 3', 'Source Sans Pro', system-ui, sans-serif;
  font-size: 0.75rem;
  line-height: 1.5;
  color: var(--iu-black, #1D1D1F);
  margin: 0 0 0.3rem 0;
}

.col :deep(ul) {
  font-size: 0.75rem;
  line-height: 1.5;
  padding-left: 1.2em;
  margin: 0;
}

.col :deep(li) {
  margin-bottom: 0.2em;
}

.col :deep(li::marker) {
  color: var(--iu-green, #0BF000);
}

/* Source line at bottom */
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
