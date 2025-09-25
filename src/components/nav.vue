<script setup>
import navList from './navList.vue';

import IconCake from './icons/IconCake.vue';
import IconLinkedIn from './icons/IconLinkedIn.vue';
import { reactive } from 'vue';
import { split } from 'postcss/lib/list';

const menu = reactive([
  { title: '前端', content: [{ title: '小物件', le:'ch'}, { title: 'Side Project', le:'en'}] },
  { title: '平面', content: [{ title: '插畫', le:'ch'}] },
])

console.log(menu[0].title.split(1));

</script>

<template>
  <header class="w-sm h-screen overflow-y-scroll scroll pt-[216px]">
    <nav class="w-[328px] min-h-full m-auto p-4 pt-[80px] rounded-t-[80px] flex flex-col relative cursor-default">
      <div class="avatar-box w-[200px] absolute -top-[86px] left-1/2 -translate-x-1/2">
        <img class="justify-center absolute bottom-0 left-1/2 -translate-x-1/2" src="../assets/img/svg/avater.svg"
          alt="">
        <img src="" class="w-[190px] h-[150px] m-auto mb-[10px] rounded-t-[80px] rounded-b-[65px]" alt=""
          style="background-color: aqua;">
      </div>
      <!-- 主標題 -->
      <div class="about relative font-bold text-[24px]">
        <h3 class="absolute left-1/2 -translate-x-1/2 translate-y-[2px] ">Jerry Liu</h3>
        <svg class="svg-text-container" width="100%" height="50px">
          <text class="svg-text" x="50%" y="50%">Jerry Liu</text>
        </svg>
        <div class="icon-box flex justify-center gap-3 mt-4">
          <IconCake />
          <IconLinkedIn />
        </div>
      </div>

      <!-- 選單 -->
      <div class="flex-1 flex flex-col justify-between align-items-center" style="height: 100%;">
        <div class="list-group mt-16 flex flex-col gap-10">
          <template v-for="(item, index) in menu" :key="index">
            <navList :info="item.content">
              <span v-for="(char, index) in item.title" :key="index">
                {{ char }}
              </span>
            </navList>
          </template>
        </div>
        <a href="http://" class="other-page text-center text-4 indent-[8px] tracking-[8px]">page</a>
      </div>
    </nav>
  </header>
</template>

<style scoped type="text/tailwindcss">
header {
  background-color: var(--color-dark);
}

header::-webkit-scrollbar {
  display: none;
}

nav {
  background: linear-gradient(var(--color-orange), var(--color-dark-orange));
}

.about h3 {
  color: var(--color-light);
}

.about h3.stroke {
  -webkit-text-stroke: 8px var(--color-dark);
}

.svg-text {
  /* 關鍵屬性 */
  stroke: var(--color-dark);
  /* SVG 的文字外框顏色 */
  stroke-width: 10px;
  /* SVG 的外框寬度 */

  /* SVG 獨有的進階控制 */
  stroke-linejoin: round;
  /* 控制外框邊角的形狀 (圓角) */
  text-anchor: middle;
  /* 文字水平置中 */
  dominant-baseline: middle;
  /* 文字垂直置中 */
}

.other-page {
  color: var(--color-light);
}
</style>