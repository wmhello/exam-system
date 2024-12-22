<template>
  <div>
    <el-page-header @back="goBack" content="修改信息">
    </el-page-header>
    <div class="edit_cont">
      <el-form ref="editForm" :rules="rules" :model="editForm" label-width="80px">
        <el-form-item label="用户名：">
          <el-input v-model="editForm.userName" disabled></el-input>
        </el-form-item>
        <el-form-item label="性别：">
          <el-radio-group v-model="editForm.sex">
            <el-radio label="男"></el-radio>
            <el-radio label="女"></el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="年龄：" prop="age">
          <el-input v-model.trim.number="editForm.age"></el-input>
        </el-form-item>
        <el-form-item label="手机号：" prop="phone">
          <el-input v-model.trim="editForm.phone"></el-input>
        </el-form-item>
        <el-form-item label="邮箱：" prop="email">
          <el-input v-model.trim="editForm.email"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="editBtnClick('editForm')">修改</el-button>
          <el-button @click="goBack">返回</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
  import {request, Qs} from "network/request";

  export default {
    name: "EditInfo",
    data() {
      const validatePhone = (rule, value, callback) => {
        if (!(/^1[3456789]\d{9}$/.test(value))) {
          callback(new Error('手机号格式不正确'));
        } else {
          callback();
        }
      };
      const validateAge = (rule, value, callback) => {
        if (value === ''|| value === null) {
          callback();
        } else if (!/^\d{1,2}$/.test(value)) {
          callback(new Error('年龄输入有误!'));
        } else if (value <= 0 || value > 100) {
          callback(new Error('456年龄输入有误!'));
        } else {
          callback();
        }
      };
      const validateEmail = (rule, value, callback) => {
        if(value === '' || value === null){
          callback();
        }else if(!/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/.test(value)){
          callback(new Error('邮箱格式有误!'));
        }else {
          callback();
        }
      };
      return {
        editForm: {
          userId:this.$store.state.user.userId,
          userName: this.$store.state.user.userName,
          sex: this.$store.state.user.sex,
          age: this.$store.state.user.age,
          phone: this.$store.state.user.phone,
          email: this.$store.state.user.email
        },
        rules: {
          phone: [
            {required: true, message: '手机号不能为空', trigger: 'blur'},
            {validator: validatePhone, trigger: 'blur'},
          ],
          age: [
            {validator: validateAge, trigger: 'blur'},
          ],
          email: [
            {validator: validateEmail, trigger: 'blur'},
          ]
        }
      }
    },
    methods: {
      editBtnClick(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            let data = {
              sex: this.editForm.sex,
              age: this.editForm.age,
              phone: this.editForm.phone,
              email: this.editForm.email,
            }
            request({
              method:'put',
              url: '/user/'+this.editForm.userId+"?"+Qs.stringify(data),
            }).then(res => {
              if (!res.data.success) {
                this.$message.error(res.data.message);
              } else {
                this.$message('修改成功');
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
    width: 300px;
    margin: 0 auto;
    margin-top: 20px;
  }

  .el-form-item {
    margin-top: 20px;
  }
</style>
