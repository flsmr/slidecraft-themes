<template>
  <div class="slidev-layout fact-schwarz">
    <!-- Title line 1 -->
    <div class="fact-title-1">
      <slot name="title1" />
    </div>

    <!-- Title line 2 -->
    <div class="fact-title-2">
      <slot name="title2" />
    </div>

    <!-- Column 1 (odd — higher) -->
    <div class="fact-col fact-col-1 fact-col-odd">
      <div class="fact-number"><slot name="num1" /></div>
      <div class="fact-minititel-1"><slot name="mini1a" /></div>
      <div class="fact-minititel-2"><slot name="mini1b" /></div>
      <div class="fact-body"><slot name="body1" /></div>
    </div>

    <!-- Column 2 (even — lower) -->
    <div class="fact-col fact-col-2 fact-col-even">
      <div class="fact-number"><slot name="num2" /></div>
      <div class="fact-minititel-1"><slot name="mini2a" /></div>
      <div class="fact-minititel-2"><slot name="mini2b" /></div>
      <div class="fact-body"><slot name="body2" /></div>
    </div>

    <!-- Column 3 (odd — higher) -->
    <div class="fact-col fact-col-3 fact-col-odd">
      <div class="fact-number"><slot name="num3" /></div>
      <div class="fact-minititel-1"><slot name="mini3a" /></div>
      <div class="fact-minititel-2"><slot name="mini3b" /></div>
      <div class="fact-body"><slot name="body3" /></div>
    </div>

    <!-- Column 4 (even — lower) -->
    <div class="fact-col fact-col-4 fact-col-even">
      <div class="fact-number"><slot name="num4" /></div>
      <div class="fact-minititel-1"><slot name="mini4a" /></div>
      <div class="fact-minititel-2"><slot name="mini4b" /></div>
      <div class="fact-body"><slot name="body4" /></div>
    </div>

    <!-- Column 5 (odd — higher) -->
    <div class="fact-col fact-col-5 fact-col-odd">
      <div class="fact-number"><slot name="num5" /></div>
      <div class="fact-minititel-1"><slot name="mini5a" /></div>
      <div class="fact-minititel-2"><slot name="mini5b" /></div>
      <div class="fact-body"><slot name="body5" /></div>
    </div>

    <!-- Source line -->
    <div class="source-line">
      <slot name="source" />
    </div>
  </div>
</template>

<style scoped>
/* ── Layout root ── */
.fact-schwarz {
  position: relative;
  width: 100%;
  height: 100%;
  background-color: var(--iu-black);
  color: var(--iu-white);
  overflow: hidden;
}

/* ── Title lines ── */
.fact-title-1 {
  position: absolute;
  left: 2.55%;
  top: 5.07%;
  width: 41.19%;
  height: 6.80%;
  display: flex;
  align-items: center;
  color: var(--iu-gray-light);
}

.fact-title-2 {
  position: absolute;
  left: 2.55%;
  top: 12.67%;
  width: 43.14%;
  height: 6.80%;
  display: flex;
  align-items: center;
  color: var(--iu-gray-light);
}

.fact-title-1 :deep(*),
.fact-title-2 :deep(*) {
  font-family: var(--font-heading);
  font-weight: 700;
  font-size: 1.4rem;
  text-transform: uppercase;
  color: var(--iu-gray-light);
  margin: 0;
  padding: 0;
  line-height: 1.2;
}

/* ── Column base ── */
.fact-col {
  position: absolute;
  width: 15.68%;
}

/* Column x positions */
.fact-col-1 { left: 3.15%; }
.fact-col-2 { left: 22.96%; }
.fact-col-3 { left: 42.31%; }
.fact-col-4 { left: 62.34%; }
.fact-col-5 { left: 81.32%; }

/* ── Big number ── */
.fact-number {
  position: absolute;
  width: 100%;
  height: 18.27%;
  display: flex;
  align-items: flex-start;
}

.fact-col-odd .fact-number  { top: 33.07%; }
.fact-col-even .fact-number { top: 42.67%; }

.fact-number :deep(h2),
.fact-number :deep(p) {
  font-family: var(--font-heading);
  font-size: 96pt;
  font-weight: 700;
  color: var(--iu-green);
  line-height: 1;
  margin: 0;
  padding: 0;
  background: transparent;
}

/* ── Minititel lines ── */
.fact-minititel-1,
.fact-minititel-2 {
  position: absolute;
  width: 92%; /* 1.92/2.09 = 91.87% */
  height: 3.87%;
  display: flex;
  align-items: center;
  background-color: var(--iu-white);
  padding: 0 0.3em;
}

/* Odd columns */
.fact-col-odd .fact-minititel-1  { top: 50.13%; }
.fact-col-odd .fact-minititel-2  { top: 54.67%; }
/* Even columns */
.fact-col-even .fact-minititel-1 { top: 59.73%; }
.fact-col-even .fact-minititel-2 { top: 64.27%; }

.fact-minititel-1 :deep(*),
.fact-minititel-2 :deep(*) {
  font-family: var(--font-body);
  font-size: 0.65rem;
  font-weight: 600;
  color: var(--iu-black);
  margin: 0;
  padding: 0;
  line-height: 1.2;
  text-transform: uppercase;
}

/* ── Body text ── */
.fact-body {
  position: absolute;
  width: 100%;
  height: 19.07%;
}

.fact-col-odd .fact-body  { top: 61.73%; }
.fact-col-even .fact-body { top: 71.33%; }

.fact-body :deep(p),
.fact-body :deep(ul),
.fact-body :deep(li) {
  font-family: var(--font-body);
  font-size: 0.7rem;
  color: var(--iu-gray-light);
  line-height: 1.45;
  margin: 0;
  padding: 0;
}

/* ── Source line ── */
.source-line {
  position: absolute;
  left: 3.60%;
  top: 93.47%;
  width: 90%;
}

.source-line :deep(*) {
  font-family: var(--font-body);
  font-size: 0.55rem;
  color: var(--iu-gray-muted);
  margin: 0;
  padding: 0;
}
</style>
