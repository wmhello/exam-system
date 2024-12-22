<template>
  <div>
    <el-page-header @back="goBack" content="修改密码">
    </el-page-header>
    <div class="edit_cont">
      <el-form ref="passForm" :rules="rules" :model="passForm" label-width="150px">
        <el-form-item label="旧密码：" prop="oldPass">
          <el-input v-model="passForm.oldPass" show-password></el-input>
        </el-form-item>
        <el-form-item label="新密码：" prop="newPass">
          <el-input v-model="passForm.newPass" show-password></el-input>
        </el-form-item>
        <el-form-item label="再次输入新密码：" prop="renewPass">
          <el-input v-model="passForm.renewPass" show-password></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="editBtnClick('passForm')">修改</el-button>
          <el-button @click="goBack">返回</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
  import {request, Qs} from "network/request";

  export default {
    name: "EditPass",
    data() {
      const validateRePass = (rule, value, callback) => {
        if (value !== this.passForm.newPass) {
          callback(new Error('两次输入密码不一致!'));
        } else {
          callback();
        }
      };
      return {
        passForm: {
          userId: this.$store.state.user.userId,
          oldPass: '',
          newPass: '',
          renewPass: '',
        },
        rules: {
          oldPass: [
            {required: true, message: '请输入旧密码', trigger: 'blur'},
          ],
          newPass: [
            {required: true, message: '请输入新密码', trigger: 'blur'},
            {min: 8, max: 16, message: '长度在 8 到 16 个字符', trigger: 'blur'}
          ],
          renewPass: [
            {required: true, message: '请再次输入新密码', trigger: 'blur'},
            {validator: validateRePass, trigger: 'blur'}
          ]
        }
      }
    },
    methods: {
      editBtnClick(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            let data = {
              userId:this.passForm.userId,
              oldPass:this.passForm.oldPass,
              newPass:this.passForm.newPass,
            }
            request({
              method:'put',
              url: '/user/updatePass?'+Qs.stringify(data),
            }).then(res => {
              if (!res.data.success) {
                this.$message.error('旧密码输入有误！！');
              } else {
                this.$message({
                  message:'修改成功',
                  type:'success'
                });
                this.$store.commit('resetState');
                setTimeout(window.location.href = "/login",5000)
              }
            })
          } else {
            return false;
          }
        });
      },
      goBack() {
        this.$router.go(-1);
      }
    }
  }
</script>

<style scoped>
  .edit_cont {
    width: 400px;
    margin: 0 auto;
    margin-top: 20px;
  }

  .el-form-item {
    margin-top: 20px;
  }
</style>
