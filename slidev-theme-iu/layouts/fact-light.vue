<template>
  <div class="slidev-layout headline-facts-weiss-farbe">
    <div class="layout-title" style="max-width: 14.38%">
      <slot name="title" />
    </div>
    <div class="layout-columns">
      <div class="layout-col" style="max-width: 15.69%">
        <slot />
      </div>
      <div class="layout-col" style="max-width: 14.38%">
        <slot name="col2" />
      </div>
      <div class="layout-col" style="max-width: 15.69%">
        <slot name="col3" />
      </div>
      <div class="layout-col" style="max-width: 14.38%">
        <slot name="col4" />
      </div>
      <div class="layout-col" style="max-width: 14.38%">
        <slot name="col5" />
      </div>
      <div class="layout-col" style="max-width: 15.69%">
        <slot name="col6" />
      </div>
      <div class="layout-col" style="max-width: 14.38%">
        <slot name="col7" />
      </div>
      <div class="layout-col" style="max-width: 14.38%">
        <slot name="col8" />
      </div>
      <div class="layout-col" style="max-width: 15.69%">
        <slot name="col9" />
      </div>
      <div class="layout-col" style="max-width: 14.38%">
        <slot name="col10" />
      </div>
      <div class="layout-col" style="max-width: 14.38%">
        <slot name="col11" />
      </div>
      <div class="layout-col" style="max-width: 15.69%">
        <slot name="col12" />
      </div>
      <div class="layout-col" style="max-width: 14.38%">
        <slot name="col13" />
      </div>
      <div class="layout-col" style="max-width: 14.38%">
        <slot name="col14" />
      </div>
      <div class="layout-col" style="">
        <slot name="col15" />
      </div>
      <div class="layout-col" style="max-width: 43.15%">
        <slot name="col16" />
      </div>
      <div class="layout-col" style="max-width: 41.19%">
        <slot name="col17" />
      </div>
    </div>
  </div>
</template>

<style scoped>
.headline-facts-weiss-farbe {
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
