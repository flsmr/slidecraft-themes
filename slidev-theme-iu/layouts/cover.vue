<script setup>
import { computed } from 'vue'
import TiltedFrame from '../components/TiltedFrame.vue'

const props = defineProps({
  image: { type: String, default: '' },
  overlay: { type: Boolean, default: true },
  label: { type: String, default: 'Example' },
})

const bgStyle = computed(() => {
  if (!props.image) return {}
  return {
    backgroundImage: `url(${props.image})`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
  }
})
</script>

<template>
  <div class="slidev-layout iu-cover" :style="bgStyle">
    <div v-if="overlay" class="iu-cover-overlay"></div>

    <TiltedFrame :label="label" />

    <div class="title-bar">
      <slot name="title" />
    </div>
    <div class="subtitle-bar">
      <slot />
    </div>
  </div>
</template>

<style scoped>
.iu-cover {
  background-color: var(--iu-black, #1D1D1F);
  color: var(--iu-white, #FFFFFF);
  height: 100%;
  position: relative;
  overflow: hidden;
  padding: 0 !important;
}

.iu-cover-overlay {
  position: absolute;
  inset: 0;
  background: linear-gradient(90deg, rgba(0,0,0,0.55) 0%, rgba(0,0,0,0.10) 60%, rgba(0,0,0,0) 100%);
  z-index: 0;
  pointer-events: none;
}

.title-bar {
  position: absolute;
  left: 0;
  top: 42.51%;
  height: 11.70%;
  max-width: 91.92%;
  z-index: 2;
}

.title-bar :deep(h1) {
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 3.4rem;
  line-height: 1;
  color: var(--iu-black, #1D1D1F) !important;
  background: var(--iu-white, #FFFFFF) !important;
  margin: 0 !important;
  padding: 0 1.5rem !important;
  display: flex !important;
  align-items: center;
  height: 100%;
  text-transform: uppercase;
  letter-spacing: 0.01em;
  border: none !important;
}

.subtitle-bar {
  position: absolute;
  left: 0;
  top: 55.36%;
  height: 11.70%;
  max-width: 96.51%;
  z-index: 2;
}

.subtitle-bar :deep(h2),
.subtitle-bar :deep(p) {
  font-family: 'Source Sans Pro', system-ui, sans-serif;
  font-weight: 700;
  font-size: 3.4rem;
  line-height: 1;
  color: var(--iu-black, #1D1D1F) !important;
  background: var(--iu-white, #FFFFFF) !important;
  margin: 0 !important;
  padding: 0 1.5rem !important;
  display: flex !important;
  align-items: center;
  height: 100%;
  text-transform: uppercase;
  letter-spacing: 0.01em;
}

.subtitle-bar :deep(p:empty) {
  display: none;
}
</style>
