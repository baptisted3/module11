<template>
  <div class="about">
    <h1>About Me</h1>

    <p>
      Hello! My name is Dirnelle Baptiste, and I am
      currently Studying Web and UX Design at Wake Technical
      Community College.
    </p>

    <p>
      I created this Random Quote Generator as part
      of my web development coursework. This project
      allows me to practice working with Vue.js,
      Vue Router, and APIs while learning how to
      build interactive websites.
    </p>

    <p>
      I enjoy learning new technologies and improving
      my web design and programming skills.
    </p>

    <GoBack/>
  </div>
</template>

<script>
import GoBack from '../components/GoBack.vue'

export default {
  name: 'AboutView',
  components: {
    GoBack
  }
}
</script>

<style scoped>
.about {
  text-align: center;
  padding: 40px;
  color: #344e41;
}

.about h1 {
  font-size: 18px;
  line-height: 1.8;
  max-width: 750px;
  margin: 20px auto;
}
</style>
