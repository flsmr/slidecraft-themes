<template>
  <img src="/assets/master0_Grafik_12.png" alt="Company Logo" class="company-logo" :style="{ height: size }" />
</template>

<script setup>
defineProps({ size: { type: String, default: '2.5rem' } })
</script>

<style scoped>
.company-logo { width: auto; object-fit: contain; }
</style>
