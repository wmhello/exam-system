<template>
  <el-menu
    :default-active="activeIndex"
    class="el-menu-demo"
    @select="handleSelect"
  >
    <el-menu-item index="/profile/index">
      <i class="el-icon-menu"></i>
      <span slot="title">欢迎页</span>
    </el-menu-item>
    <el-menu-item index="/profile/student/examlist">
      <i class="el-icon-menu"></i>
      <span slot="title">考试列表</span>
    </el-menu-item>
    <el-menu-item index="/profile/student/score">
      <i class="el-icon-document"></i>
      <span slot="title">我的成绩</span>
    </el-menu-item>
    <!-- <el-menu-item index="/profile/info">
      <i class="el-icon-setting"></i>
      <span slot="title">个人信息</span>
    </el-menu-item> -->
  </el-menu>
</template>

<script>
export default {
  name: "StudentMenu",
  computed: {
    activeIndex() {
      let path = this.$route.path;
      if (path === "/profile/edit" || path === "/profile/pass") {
        return "/profile/info";
      } else {
        return path;
      }
    }
  },
  methods: {
    handleSelect(key, keyPath) {
      this.$router.push(key);
    }
  }
};
</script>

<style scoped></style>
