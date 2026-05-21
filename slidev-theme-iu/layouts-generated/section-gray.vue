<!-- ALIAS layout:section-gray -> canonical:kapiteleinstieg-grau — AUTO-GENERATED — do not edit by hand. -->
<template>
  <div class="slidev-layout iu-section-gray" style="background:#1D1D1F">
    <div class="shape shape--rect shape--textfeld-2"
         style="left:37.4600%;top:-12.8700%;width:0.0000%;height:0.0000%;background:transparent"></div>
    <div class="textbox textbox--title"
         style="left:0.0000%;top:37.3100%;width:57.2700%;height:8.6600%;background:#FFFFFF;font-family:'Source Sans Pro',system-ui,sans-serif;font-weight:700;font-style:normal;font-size:calc(38.0 / 540 * 100vh);color:inherit;text-align:left;display:flex;align-items:flex-start;width: fit-content; white-space: nowrap; max-width: 100%">
      <slot name="title"><span /></slot>
    </div>
    <div class="textbox textbox--default"
         style="left:0.0000%;top:46.9100%;width:40.9400%;height:8.6600%;background:#FFFFFF;font-family:'Source Sans Pro',system-ui,sans-serif;font-weight:700;font-style:normal;font-size:calc(38.0 / 540 * 100vh);color:inherit;text-align:left;display:flex;align-items:flex-start;width: fit-content; white-space: nowrap; max-width: 100%">
      <slot><span /></slot>
    </div>
    <div class="textbox textbox--body-1"
         style="left:0.8000%;top:-1.5700%;width:16.1400%;height:25.6600%;background:transparent;font-family:'Source Sans Pro',system-ui,sans-serif;font-weight:700;font-style:normal;font-size:calc(128.0 / 540 * 100vh);color:inherit;text-align:left;display:flex;align-items:flex-start;width: fit-content; white-space: nowrap; max-width: 100%">
      <slot name="body-1"><span /></slot>
    </div>
    <img class="shape shape--picture shape--grafik-9"
         src="/assets/media/image3.png"
         style="left:82.2300%;top:0.0000%;width:17.7700%;height:15.2600%;object-fit:cover" alt="">
  </div>
</template>

<script setup>
// layout: section-gray (alias of kapiteleinstieg-grau)
// generated from theme-manifest.json
</script>

<style scoped>
.iu-section-gray {
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
