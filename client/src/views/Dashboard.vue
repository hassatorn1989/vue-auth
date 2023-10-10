<template lang="">
    <div class="container">
        <h1>Dashboard</h1>
        <button type="button" class="btn btn-primary"
            @click="handleLogout"
            :disabled="loading"
        >
            Logout
        </button>
    </div>
</template>
<script>
export default {
    data () {
        return {
            loading: false,
            message: '',
            error: false
        }
    },
    methods : {
        handleLogout() {
            this.loading = true;
            this.$store.dispatch('auth/logout').then(() => {
                this.$router.push({ name: 'Login' });
            }).catch((error) => {
                this.loading = false;
                console.log(error);
            });
        }
    }
}
</script>
<style lang="">
    
</style>