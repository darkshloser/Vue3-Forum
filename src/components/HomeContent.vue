<template>
<div>Welcome to the Forum</div>
<ThreadList :threads="threads"/>
</template>

<script setup>
import sourceData from '@/data.json'
import { defineAsyncComponent, ref } from 'vue'

const ThreadList = defineAsyncComponent(() => import('./ThreadList.vue'))

const threads = ref(sourceData.threads)


</script>

<style scoped>

</style>





