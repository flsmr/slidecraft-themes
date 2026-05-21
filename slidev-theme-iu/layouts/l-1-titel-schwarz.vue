<template>
  <div class="slidev-layout l-1-titel-schwarz">
    <div class="layout-title" style="max-width: 21.39%">
      <slot name="title" />
    </div>
  </div>
</template>

<style scoped>
.l-1-titel-schwarz {
  padding: 2rem 3rem;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  height: 100%;
}

.layout-title {
  font-family: var(--slidev-theme-font-heading);
  font-size: 28pt;
  font-weight: 700;
  margin-bottom: 1.5rem;
}

.layout-body {
  flex: 1;
}
</style>
