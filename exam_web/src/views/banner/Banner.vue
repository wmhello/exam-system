<template>
  <el-carousel :interval="4000"  height="310px">
    <el-carousel-item >
      <img class="img" src="https://i.loli.net/2021/11/09/Nncf4SIKwOPxG91.png">
    </el-carousel-item>
        <el-carousel-item >
      <img class="img" src="https://i.loli.net/2021/11/09/2kEfnWPXUeq7DmJ.png">
    </el-carousel-item>
     <el-carousel-item >
      <img class="img" src="https://i.loli.net/2021/11/09/6UZ3A5yCqV8QJ27.png">
    </el-carousel-item>
  </el-carousel>
</template>

<script>
  export default {
    name: "Banner"
  }
</script>

<style scoped>
  .el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 200px;
    margin: 0;
  }

  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }

  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }

  .img{
    width: 1148px;
    height: 100%;
  }
</style>
