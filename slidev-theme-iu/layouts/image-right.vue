<template>
  <div class="slidev-layout iu-image-right">
    <div class="title-area">
      <slot />
    </div>
    <div class="text-area">
      <slot name="text" />
    </div>
    <div class="image-area">
      <slot name="image" />
    </div>
    <div class="source-area">
      <slot name="source" />
    </div>
  </div>
</template>

<style scoped>
.iu-image-right {
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

/* Text content: pos=(0.48in, 1.67in), size=(4.09×5.23in) */
/* left=0.48/13.33*100=3.60%, top=22.27%, w=4.09/13.33*100=30.68%, h=69.73% */
.text-area {
  position: absolute;
  left: 3.60%;
  top: 22.27%;
  width: 30.68%;
  height: 69.73%;
  overflow: hidden;
}

.text-area :deep(h2) {
  font-family: 'Source Sans 3', 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 600;
  font-size: 1.2rem;
  color: var(--iu-gray-dark, #575E62);
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.text-area :deep(p) {
  font-size: 1.0rem;
  line-height: 1.6;
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.text-area :deep(ul),
.text-area :deep(ol) {
  font-size: 1.0rem;
  line-height: 1.7;
  padding-left: 1.5em;
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.text-area :deep(li) {
  margin-bottom: 0.3em;
}

.text-area :deep(li::marker) {
  color: var(--iu-green, #0BF000);
}

.text-area :deep(strong) {
  font-weight: 700;
}

/* Image placeholder: pos=(5.64in, 1.73in), size=(7.69×5.16in) */
/* left=5.64/13.33*100=42.31%, top=1.73/7.50*100=23.07%, w=7.69/13.33*100=57.69%, h=5.16/7.50*100=68.80% */
.image-area {
  position: absolute;
  left: 42.31%;
  top: 23.07%;
  width: 57.69%;
  height: 68.80%;
  overflow: hidden;
}

.image-area :deep(img) {
  width: 100%;
  height: 100%;
  object-fit: cover;
  display: block;
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
