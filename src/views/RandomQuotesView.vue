<template>
    <div class="random-quotes">
        <QuoteGenerator/>
        <GoBack/>
    </div>
</template>

<script>
import QuoteGenerator from '../components/QuoteGenerator.vue'
import GoBack from '../components/GoBack.vue'

export default {
    name: 'RandomQuotesView',
    components: {
        QuoteGenerator,
        GoBack
    }
}
</script>

<style scoped>
.random-quotes {
    text-align: center;
    padding-bottom: 40px;
}
</style>
