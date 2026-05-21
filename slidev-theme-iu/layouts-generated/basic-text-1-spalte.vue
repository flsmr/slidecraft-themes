<!-- AUTO-GENERATED from theme-manifest.json — do not edit by hand. -->
<template>
  <div class="slidev-layout iu-basic-text-1-spalte" style="background:#FFFFFF">
    <div class="textbox textbox--date"
         style="left:3.6600%;top:97.2300%;width:3.8400%;height:1.9700%;background:transparent;font-family:'Source Sans Pro',system-ui,sans-serif;font-weight:400;font-style:normal;font-size:calc(18.0 / 540 * 100vh);color:inherit;text-align:left;display:flex;align-items:flex-start;width: 3.8400%; overflow-wrap: break-word; hyphens: auto">
      <slot name="date"><span /></slot>
    </div>
    <div class="textbox textbox--default"
         style="left:3.6300%;top:22.2000%;width:69.4000%;height:69.7900%;background:transparent;font-family:'Source Sans Pro',system-ui,sans-serif;font-weight:400;font-style:normal;font-size:calc(17.0 / 540 * 100vh);color:inherit;text-align:left;display:flex;align-items:flex-start;width: 69.4000%; overflow-wrap: break-word; hyphens: auto">
      <slot><span /></slot>
    </div>
    <div class="textbox textbox--title"
         style="left:3.4500%;top:6.5400%;width:69.5800%;height:12.1200%;background:transparent;font-family:'Source Sans Pro',system-ui,sans-serif;font-weight:700;font-style:normal;font-size:calc(24.0 / 540 * 100vh);color:inherit;text-align:left;display:flex;align-items:flex-start;width: 69.5800%; overflow-wrap: break-word; hyphens: auto">
      <slot name="title"><span /></slot>
    </div>
    <div class="textbox textbox--body-1"
         style="left:3.6300%;top:93.4400%;width:92.7400%;height:3.2900%;background:transparent;font-family:'Source Sans Pro',system-ui,sans-serif;font-weight:400;font-style:normal;font-size:calc(8.0 / 540 * 100vh);color:inherit;text-align:left;display:flex;align-items:flex-start;width: 92.7400%; overflow-wrap: break-word; hyphens: auto">
      <slot name="body-1"><span /></slot>
    </div>
  </div>
</template>

<script setup>
// layout: basic-text-1-spalte
// generated from theme-manifest.json
</script>

<style scoped>
.iu-basic-text-1-spalte {
  position: relative;
  height: 100%;
  overflow: hidden;
}
.shape, .textbox {
  position: absolute;
  box-sizing: border-box;
}
.shape--picture {
  /* picture: no media_ref in manifest — rendered by global-bottom.vue */
  background: rgba(0,0,0,0.05);
}
</style>
