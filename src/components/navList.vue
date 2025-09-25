<script setup>
const props = defineProps({
  info: {
    type: Array,
    required: true
  },
});
</script>

<template>
  <ul class="w-[232px] p-4 m-auto rounded-[24px] flex flex-col gap-2 relative">
    <li class="title w-[110px] pt-2 px-6 rounded-t-[16px] flex absolute left-1/2 -translate-x-1/2 -top-[25px]">
      <h2 class="flex justify-between text-[24px] "><slot><span>標</span><span>題</span></slot></h2>
    </li>
    <li><img src="../assets/img/svg/diamond-fill.svg" class="m-auto" alt=""></li>
    <template v-for="(item , index) in props.info">
      <li class="info text-[20px] font-normal text-center" :class="item.le === 'ch' ? 'indent-[4px] tracking-[4px]' : '' ">{{ item.title }}</li>
      <li v-if="(index + 1) !== props.info.length"><img src="../assets/img/svg/cleck-line.svg" class="m-auto" alt=""></li>
    </template >
  </ul>

</template>

<style scoped type="text/tailwindcss">
ul {
  background-color: var(--color-light);
}

ul li:nth-child(1) {
  background-color: var(--color-light);
  color: var(--color-orange);
}

ul li:nth-child(1)::after {
  content: '';
  position: absolute;
  bottom: 7px;
  right: -10px;
  width: 10px;
  aspect-ratio: 1/1;
  background:radial-gradient(circle at 100% 0, transparent 0%, transparent 70%, var(--color-light)71%);
}

ul li:nth-child(1)::before {
  content: '';
  position: absolute;
  bottom: 7px;
  left: -10px;
  width: 10px;
  aspect-ratio: 1/1;
  background:radial-gradient(circle at 0 0, transparent 0%, transparent 70%, var(--color-light)71%);
}

ul li:nth-child(1) h2 {
  flex: 1;
  line-height: 24px;
}

li.info:hover {
  color: var(--color-orange);
  font-weight: 450;
  cursor: pointer;
}
  

</style>