<template>
  <el-container class="index_cont">
    <el-header style="height: 61px" >
      <MainMenu></MainMenu>
    </el-header>
    <el-main >
      <router-view/>
    </el-main>
    <el-footer >
      <Footer></Footer>
    </el-footer>
  </el-container>
</template>

<script>
  import MainMenu from "views/menu/MainMenu"
  import Home from "views/Home";
  import Footer from "views/footer/Footer";

  export default {
    name: "Index",
    components: {
      MainMenu,
      Home,
      Footer
    },
  }
</script>

<style scoped>
  .index_cont {
    width: 1190px;
    border: 1px solid #eee;
    margin: 0 auto
  }

  .el-header {
    border-bottom: 1px solid #dcdfe6;
    color: #409EFF;
  }

  .el-footer {
    height: 100px;
    border-top: 1px solid #dcdfe6;
  }
</style>
