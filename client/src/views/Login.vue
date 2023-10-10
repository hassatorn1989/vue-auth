<template lang="">
    <div class="container mx-auto">
        <form @submit="handleLogin">
            
            <div class="row align-items-center">
                <div class="col-md-6 mx-auto">
                    <div 
                v-if="error"
            class="alert alert-danger" role="alert">
                {{ message }}
                </div>
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" v-model="username" class="form-control" placeholder="Username">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" v-model="password" class="form-control" placeholder="Username">
                    </div>
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-primary">Login</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</template>
<script>
export default {
    name: 'Login',
    data() {
        return {
            username: '',
            password: '',
            loading: false,
            message: '',
            error: false
        }
    },
    methods: {
        handleLogin(e) {
            this.loading = true;
            this.$store.dispatch('auth/login', {
                username: this.username,
                password: this.password
            }).then(() => {
                this.$router.push({ name: 'Dashboard' });
            }).catch((error) => {
                this.error = true;
                this.message = error.response.data.message;
            });
            this.loading = false;
            e.preventDefault();
        }
    }
}
</script>
<style lang="">
    
</style>