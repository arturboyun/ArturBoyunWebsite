<script setup lang="ts">
import Card from "./components/Card.vue";
import { ref } from "vue";
const links = ref([
  "https://arturboyun.t.me",
  "https://github.com/arturboyun",
  "https://linkedin.com/in/arturboyun",
]);
const description = ref(
  "I am a Python Full Stack developer skilled in FastAPI and Nuxt." + 
  "I focus on continuous improvement, transparency, and delivering high-quality results through clear communication."
);
</script>

<template>
  <div class="main">
    <Card
      fullName="Artur Boyun"
      :description="description"
      :telegramLink="links[0]"
      :githubLink="links[1]"
      :linkedinLink="links[2]"
    />
  </div>
</template>

<style scoped>
.main {
  width: 100%;
  height: 100dvh;
  display: flex;
  align-items: center;
  justify-content: center;
}
</style>
