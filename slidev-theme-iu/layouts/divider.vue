<template>
  <div class="slidev-layout trenner-marketing">
    <div class="layout-body">
      <slot />
    </div>
  </div>
</template>

<style scoped>
.trenner-marketing {
  padding: 2rem 3rem;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  height: 100%;
}

.layout-body {
  flex: 1;
}
</style>
