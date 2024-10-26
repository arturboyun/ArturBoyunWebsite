<script setup lang="ts">
import VanillaTilt from "vanilla-tilt";
import { onMounted, useTemplateRef } from "vue";
import { ICardProps } from "../types/card";

const props = defineProps<ICardProps>();
const card = useTemplateRef("card");

onMounted(() => {
  if (!card.value) return;
  VanillaTilt.init(card.value, {
    reverse: true,
    max: 6,
    perspective: 1000,
    speed: 1000,
    glare: false,
    transition: true,
  });
});
</script>

<template>
  <div class="card" ref="card">
    <div class="about">
      <h2 class="full_name">{{ props.fullName }}</h2>
      <p class="description">{{ props.description }}</p>
    </div>
    <div class="links">
      <a
        :href="props.telegramLink"
        rel="noopener noreferrer"
        target="_blank"
        class="telegram"
        >Telegram</a
      >
      <a
        :href="props.githubLink"
        rel="noopener noreferrer"
        target="_blank"
        class="github"
        >GitHub</a
      >
      <a
        :href="props.linkedinLink"
        rel="noopener noreferrer"
        target="_blank"
        class="linkedin"
        >LinkedIn</a
      >
    </div>
  </div>
</template>

<style scoped lang="scss">
.card {
  display: flex;
  align-items: flex-start;
  justify-content: center;
  flex-direction: column;
  background-color: #85ffbd;
  background-image: linear-gradient(45deg, #85ffbd 0%, #fffb7d 100%);
  max-width: 320px;
  border: 2px solid black;
  border-radius: 10px;
  padding: 20px;
  color: #222;
  transform-style: preserve-3d;
  transition: all 0.2s ease;
}

.about {
  margin-bottom: 12px;
  transform-style: preserve-3d;

  .full_name {
    text-align: center;
    transform: translateZ(30px);
  }

  .description {
    font-weight: bold;
    transform: translateZ(20px);
    font-size: 14px;
    line-height: 1.5;
  }
}

.links {
  transform-style: preserve-3d;
  transform: translateZ(10px);

  a {
    color: #222;
    font-weight: bold;
    text-decoration: underline;

    &:not(:last-child) {
      margin-right: 10px;
    }

    &:hover {
      text-decoration: none;
    }
  }
}
</style>
