<template>
    <div class="not-found">
        <h1>404 - Page Not Found</h1>

        <p>
            Oops! The page you are looking for
            does not exist.
        </p>

        <p>
            Please use the navigation menu
            to visit another page.
        </p>

        <router-link to="/">
            Return to Home
        </router-link>

        <div>
        <GoBack/>
        </div>
    </div>
</template>

<script>
import GoBack from '../components/GoBack.vue'

export default {
    name: 'NotFoundView',
    components: {
        GoBack
    }
}
</script>

<style scoped>
.not-found {
    text-align: center;
    padding: 60px 20px;
    color: #344e41;
}

.not-found h1 {
    font-size: 36px;
}

.not-found p {
    font-size: 18px;
}

.not-found a {
    color: #486b44;
    font-weight: bold;
}
</style>
