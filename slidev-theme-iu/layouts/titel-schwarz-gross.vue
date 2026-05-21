<template>
  <div class="slidev-layout titel-schwarz-gross">
    <div class="layout-title" style="max-width: 77.83%">
      <slot name="title" />
    </div>
    <div class="layout-columns">
      <div class="layout-col" style="max-width: 69.01%">
        <slot />
      </div>
      <div class="layout-col" style="max-width: 21.46%">
        <slot name="col2" />
      </div>
      <div class="layout-col" style="max-width: 21.39%">
        <slot name="col3" />
      </div>
    </div>
  </div>
</template>

<style scoped>
.titel-schwarz-gross {
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

.layout-columns {
  display: flex;
  gap: 2rem;
  flex: 1;
}

.layout-col {
  flex: 1;
}

.layout-body {
  flex: 1;
}
</style>
