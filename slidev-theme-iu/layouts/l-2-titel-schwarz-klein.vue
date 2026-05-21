<template>
  <div class="slidev-layout l-2-titel-schwarz-klein">
    <div class="layout-title" style="max-width: 21.39%">
      <slot name="title" />
    </div>
    <div class="layout-columns">
      <div class="layout-col" style="max-width: 21.46%">
        <slot />
      </div>
      <div class="layout-col" style="max-width: 68.95%">
        <slot name="col2" />
      </div>
      <div class="layout-col" style="max-width: 65.73%">
        <slot name="col3" />
      </div>
    </div>
  </div>
</template>

<style scoped>
.l-2-titel-schwarz-klein {
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
