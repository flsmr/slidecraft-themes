<template>
  <div class="slidev-layout iu-bild-rechts">
    <div class="title-area">
      <slot name="title" />
    </div>
    <div class="content-area">
      <slot />
    </div>
    <div class="image-area">
      <slot name="col2" />
    </div>
    <div class="source-area">
      <slot name="source" />
    </div>
  </div>
</template>

<style scoped>
.iu-bild-rechts {
  position: relative;
  overflow: hidden;
  height: 100%;
  background-color: var(--iu-white, #FFFFFF);
  color: var(--iu-black, #1D1D1F);
}

/* Title: pos=(0.46in, 0.49in), size=(4.09×0.91in) */
/* left=3.45%, top=6.53%, w=30.68%, h=12.13% */
.title-area {
  position: absolute;
  left: 3.45%;
  top: 6.53%;
  width: 30.68%;
  height: 12.13%;
}

.title-area :deep(h1) {
  font-family: 'Source Sans 3', 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 1.6rem;
  line-height: 1.25;
  color: var(--iu-black, #1D1D1F);
  margin: 0 !important;
  padding-bottom: 0;
  border-bottom: none !important;
}

/* Body text area: pos=(0.48in, 1.67in), size=(4.07×5.23in) */
/* left=3.60%, top=22.27%, w=30.53%, h=69.73% */
.content-area {
  position: absolute;
  left: 3.60%;
  top: 22.27%;
  width: 30.53%;
  height: 69.73%;
  overflow: hidden;
}

.content-area :deep(p) {
  font-size: 0.95rem;
  line-height: 1.6;
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.content-area :deep(ul),
.content-area :deep(ol) {
  font-size: 0.95rem;
  line-height: 1.6;
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

/* Image placeholder — PPTX slide5 bbox: left=42.32%, top=23.13%, w=57.68%, h=68.86%.
   The old hand-written values (6%/86.4%) were guessed and ran past the logo. */
.image-area {
  position: absolute;
  left: 42.32%;
  top: 23.13%;
  width: 57.68%;
  height: 68.86%;
  background-color: var(--iu-gray-light, #E0E0E3);
  overflow: hidden;
}

.image-area :deep(img) {
  width: 100%;
  height: 100%;
  object-fit: cover;
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
