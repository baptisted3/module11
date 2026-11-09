<template>
  <div class="container">
    <h1>Random Quote Generator</h1>

    <div class="quote-box">
      <p v-if="loading">Loading a quote...</p>

      <div v-else>
        <p class="quote">"{{ quote }}"</p>
        <p v-if="author" class="author">- {{ author }}</p>
      </div>

      <button @click="getQuote" :disabled="loading">
        {{ loading ? 'Loading...' : 'Get New Quote' }}
      </button>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'App',

  data() {
    return {
      quote: 'Click the button to get an inspiring quote!',
      author: '',
      loading: false
    }
  },

  methods: {
    async getQuote() {
      this.loading = true

      try {
        const response = await axios.get(
          'https://dummyjson.com/quotes/random'
        )

        this.quote = response.data.quote
        this.author = response.data.author
      } catch (error) {
        console.error('Error fetching quote:', error)
        this.quote = 'Unable to load a quote. Please try again.'
        this.author = ''
      } finally {
        this.loading = false
      }
    }
  }
}
</script>

<style>
body {
  background-color: #dde8ed;
  font-family: Arial, sans-serif;
}

.container {
  max-width: 650px;
  margin: 100px auto;
  padding: 30px;
  text-align: center;
}

h1 {
  color: #344e41;
}

.quote-box {
  background-color: white;
  padding: 40px;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.quote {
  font-size: 24px;
  line-height: 1.5;
  font-style: italic;
}

.author {
  color: #666;
  font-style: italic;
}

button {
  background-color: #344e41;
  color: white;
  padding: 14px 28px;
  border: none;
  border-radius: 8px;
  font-size: 16px;
  font-weight: bold;
  cursor: pointer;
  margin-top: 20px;
}

button:hover {
  background-color: #486b44;
}

button:disabled {
  opacity: 0.6;
  cursor: not-allowed;
}
</style>
