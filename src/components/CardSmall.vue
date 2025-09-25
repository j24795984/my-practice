<script setup>
const props = defineProps({
  info: {
    type: Object,
    required: true
  }
});
console.log(props.info);

</script>
<template>
  <div class="card w-[376px] p-6 bg-white rounded-3xl transition">
    <div class="img-box w-full aspect-8/5 overflow-hidden rounded-2xl"><img :src="props.info.img" class=" object-cover w-full h-full object-center 
" alt="">
    </div>
    <h2 class="mt-4 text-[20px]">{{ props.info.title }}</h2>
    <div class="card-info mt-4">
      <p class="content">{{ props.info.content }}</p>
    </div>
  </div>
</template>
<style scoped>
  .card {
    cursor: pointer;
    box-shadow: 0 0 15px var(--color-orange-20);

  }
  .card:hover {
    transform: translateY(-10px);
    box-shadow: 0 10px 15px var(--color-orange-20);
  }
</style>