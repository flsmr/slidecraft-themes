<!-- ALIAS layout:cover -> canonical:l-1-titel-vollbild — AUTO-GENERATED — do not edit by hand. -->
<template>
  <div class="slidev-layout iu-cover" style="background:#FFFFFF">
    <div class="textbox textbox--picture-0"
         style="left:0.0000%;top:0.0000%;width:100.0000%;height:100.0000%">
      <slot name="picture-0"><span /></slot>
    </div>
    <div class="shape shape--rect shape--textfeld-2"
         style="left:37.4600%;top:-12.8700%;width:0.0000%;height:0.0000%;background:transparent"></div>
    <div class="textbox textbox--picture-1"
         style="left:77.6600%;top:0.0000%;width:23.3000%;height:20.0000%">
      <slot name="picture-1"><span /></slot>
    </div>
    <div class="textbox textbox--picture-2"
         style="left:24.1200%;top:24.5000%;width:81.7000%;height:90.3800%;transform:rotate(-4.0deg)">
      <slot name="picture-2"><span /></slot>
    </div>
    <img class="shape shape--custgeom shape--textplatzhalter-14"
         src="/assets/shapes/l-1-titel-vollbild__Textplatzhalter-14.svg"
         style="left:22.3100%;top:22.3600%;width:21.3900%;height:6.0700%;transform:rotate(-4.0deg)" alt="">
    <div class="textbox textbox--default"
         style="left:22.3100%;top:22.3600%;width:21.3900%;height:6.0700%;transform:rotate(-4.0deg);background:#FFFFFF;font-family:'Source Sans Pro',system-ui,sans-serif;font-weight:700;font-style:normal;font-size:calc(12.2 / 540 * 100vh);color:inherit;text-align:left;display:flex;align-items:flex-end;width: 21.3900%; overflow-wrap: break-word; hyphens: auto">
      <slot><span /></slot>
    </div>
  </div>
</template>

<script setup>
// layout: cover (alias of l-1-titel-vollbild)
// generated from theme-manifest.json
</script>

<style scoped>
.iu-cover {
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
