<template>
  <div >
    <Banner/>
    <div class="home_title">
      在线考试系统首页
    </div>
  </div>
</template>

<script>
import Banner from "views/banner/Banner";
export default {
  name: 'Home',
  components: {
    Banner
  }
}
</script>

<style>
  .home_title{
    margin: 0 auto;
    margin-top: 50px;
    width: 500px;
    height: 200px;
    text-align: center;
    font-size: 30px;
  }
</style>
