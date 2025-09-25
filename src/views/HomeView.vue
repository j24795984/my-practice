<script setup>
import { reactive } from 'vue';
import PageTitle from '../components/PageTitle.vue';
import CardSmall from '@/components/CardSmall.vue';

const cardInfo = reactive([{
  title: '標題1',
  content: '內容1內容1內容1內容1內容1內容1內容1內容1內容1內容1內容1內容1內容1',
  img: 'https://picsum.photos/200/300?random=1',
  tags: ['標籤1', '標籤2', '標籤3'],
}]);
</script>

<template>
  <main>
    <div class="max-w-[1200px] m-autom mt-20 px-20">
      <PageTitle title="小物件">小物件</PageTitle>
      <div class="mt-12 grid grid-cols-4 gap-4">
        <template v-for="(item , index) in cardInfo" :key="index">
          <CardSmall :info="item"/>
        </template>
      </div>
    </div>
  </main>
</template>
