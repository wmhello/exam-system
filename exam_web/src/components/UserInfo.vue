<template>
  <div class="user_info">
    <h2 style="margin-left: 120px">用户信息</h2>
    <div class="info_item">
      <div class="item_left">用户名：</div>
      {{user.userName}}
    </div>
    <div class="info_item">
      <span class="item_left">性别：</span>
      {{user.sex}}
    </div>
    <div class="info_item">
      <span class="item_left">年龄：</span>
      {{user.age}}
    </div>
    <div class="info_item">
      <span class="item_left">手机号：</span>
      {{user.phone}}
    </div>
    <div class="info_item">
      <span class="item_left">邮箱：</span>
      {{user.email}}
    </div>
    <div class="info_item">
      <span class="item_left">最后登录时间：</span>
      {{user.lastLoginTime}}
    </div>
    <div class="info_item">
      <el-button @click="infoClick" type="primary" icon="el-icon-edit">修改信息</el-button>
      <br/>
      <br/>
      <el-button @click="passClick" type="primary" icon="el-icon-edit">修改密码</el-button>
    </div>
  </div>
</template>

<script>
  export default {
    name: "UserInfo",
    data() {
      return {
        user: {
          userId: this.$store.state.user.userId,
          userName: this.$store.state.user.userName,
          sex: this.$store.state.user.sex,
          age: this.$store.state.user.age,
          lastLoginTime: this.$store.state.user.lastLoginTime,
          roleName: this.$store.state.user.roleName,
          phone: this.$store.state.user.phone,
          email: this.$store.state.user.email,
          qq: this.$store.state.user.qq,
          Authorization: this.$store.state.user.Authorization,
        }
      }
    },
    methods:{
      infoClick(){
        this.$router.push('edit')
      },
      passClick(){
        this.$router.push('pass')
      }
    }
  }
</script>

<style scoped>
  .user_info {
    width: 400px;
    margin: 0 auto;
  }

  .info_item {
    margin-top: 20px;
  }

  .item_left {
    width: 150px;
    text-align: right;
    display: inline-block;
  }

  .el-button {
    margin-left: 120px;
  }
</style>
