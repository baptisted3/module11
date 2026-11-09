<template>
    <div class="contact">
        <h1>Contact Me</h1>

        <p>
            Thank you for visiting my Random Quote Generator!
            If you have any questions or feedback,
            feel free to contact me.
        </p>

        <p><strong>Name:</strong> Dirnelle Baptiste</p>

        <p>
            <strong>Email:</strong>
            <a href="mailto:dgbaptiste@my.waketech.edu">
                dgbaptiste@my.waketech.edu
            </a>
        </p>

        <GoBack/>
    </div>
</template>

<script>
import GoBack from '../components/GoBack.vue'

export default {
    name: 'ContactView',
    components: {
        GoBack
    }
}
</script>

<style scoped>
.contact {
    text-align: center;
    padding: 40px;
    color: #344e41;
}

.contact a {
    color: #486b44;
}
</style>
