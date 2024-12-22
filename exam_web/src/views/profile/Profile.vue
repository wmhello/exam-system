<template>
  <el-container >
    <el-aside width="200px">
      <StudentMenu></StudentMenu>
    </el-aside>
    <el-main >
      <router-view></router-view>
    </el-main>
  </el-container>

</template>

<script>
  import StudentMenu from "views/menu/StudentMenu";

  export default {
    name: "Profile",
    data() {
      return {
        roleName: this.$store.state.user.roleName,
        isLogin: this.$store.state.user.isLogin
      }
    },
    created() {
      if (!this.isLogin) {
        window.location.href = "/login"
      } else {
      }
    },
    components: {
      StudentMenu
    }
  }
</script>

<style scoped>

</style>
