<template>
    <button @click="goBack" class="back-button">
        ← Go Back
    </button>
</template>

<script>
export default {
    name: 'GoBack',
    methods: {
        goBack() {
            if (window.history.state?.back != null) {
                this.$router.back()
            } else {
                this.$router.push('/')
            }
        }
    }
}
</script>

<style scoped>
.back-button {
    background-color: #486b44;
    color: white;
    padding: 12px 24px;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
    margin-top: 25px;
}

.back-button:hover {
    background-color: #344e41;
}
</style>
