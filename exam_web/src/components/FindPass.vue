<template>
  <div>
    <div class="title">找回密码</div>
    <el-steps :active="active" finish-status="success" align-center>
      <el-step title="验证身份"></el-step>
      <el-step title="找回密码"></el-step>
      <el-step title="找回成功"></el-step>
    </el-steps>
    <br/>
    <br/>
    <div class="phone_form" v-show="active===0">
      <el-form label-position="right" ref="phoneForm" :rules="rules" label-width="80px" :model="phoneForm">
        <el-form-item label="手机号：" prop="phone">
          <el-input v-model="phoneForm.phone"></el-input>
        </el-form-item>
        <el-form-item label="验证码：" prop="code">
          <el-input style="width: 100px" v-model="phoneForm.code"></el-input>
          <el-button class="sentCode" @click="codeBtnClick" v-show="isDisable" type="primary">发送验证码
          </el-button>
          <el-button class="sentCode" @click="codeBtnClick" v-show="!isDisable" disabled type="primary">{{count}}秒
          </el-button>
        </el-form-item>
        <el-button class="next_btn" @click="nextBtnClick('phoneForm')" type="primary">下一步</el-button>
      </el-form>
    </div>
    <div class="phone_form" v-show="active===1">
      <el-form label-position="right" ref="passForm" :rules="rules" label-width="100px" :model="passForm">
        <el-form-item label="密码：" prop="password">
          <el-input v-model="passForm.password" show-password></el-input>
        </el-form-item>
        <el-form-item label="重复密码：" prop="repass">
          <el-input v-model="passForm.repass" show-password></el-input>
        </el-form-item>
        <el-button class="edit_btn" @click="editBtnClick('passForm')" type="primary">提交</el-button>
        <el-button class="next_btn" @click="active=0" type="primary">上一步</el-button>
      </el-form>
    </div>
    <div class="phone_form" v-show="active===3">
      <div class="title">
        密码已成功找回！
      </div>
      <br/>
      <br/>
      <div class="title">
        <el-button style="width: 100px" @click="$router.push('/login')" type="primary">去登录</el-button>
      </div>

    </div>

  </div>
</template>

<script>
  import {request, Qs} from "network/request";

  export default {
    name: "findPass",
    data() {
      const validatePhone = (rule, value, callback) => {
        if (!(/^1[3456789]\d{9}$/.test(value))) {
          callback(new Error('手机号格式不正确'));
        } else {
          callback();
        }
      };
      const validateRePass = (rule, value, callback) => {
        if (value !== this.passForm.password) {
          callback(new Error('两次输入密码不一致!'));
        } else {
          callback();
        }
      };
      return {
        isDisable: true,
        count: 60,
        active: 0,
        phoneForm: {
          phone: '',
          code: '',
        },
        passForm:{
          userId:'',
          password:'',
          repass:'',
        },
        rules: {
          phone: [
            {required: true, message: '手机号不能为空', trigger: 'blur'},
            {validator: validatePhone, trigger: 'blur'},
          ],
          code: [
            {required: true, message: '验证码不能为空', trigger: 'blur'}
          ],
          password: [
            {required: true, message: '请输入密码', trigger: 'blur'},
            {min: 8, max: 16, message: '长度在 8 到 16 个字符', trigger: 'blur'}
          ],
          repass: [
            {required: true, message: '请再次输入密码', trigger: 'blur'},
            {validator: validateRePass, trigger: 'blur'}
          ]
        }
      }
    },
    methods: {
      codeBtnClick() {
        if (!(/^1[3456789]\d{9}$/.test(this.phoneForm.phone))) {
          this.$message.error("手机号格式有误");
        } else {
          request({
            url: "/captcha/sent",
            params: {
              phone: this.phoneForm.phone
            }
          }).then(res => {
            if (!res.data.success) {
              this.$message.error(res.data.message);
            } else {
              this.$message({
                message: "发送成功",
                type: 'success'
              });
            }
          });
          let interval = setInterval(() => {
            this.isDisable = false;
            this.count--;
            if (this.count <= 0) {
              this.isDisable = true;
              this.count = 60;
              clearInterval(interval);
            }
          }, 1000)
        }
      },
      nextBtnClick(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            request({
              url: '/captcha/verify',
              params: {
                phone: this.phoneForm.phone,
                code: this.phoneForm.code
              }
            }).then(res => {
              if (!res.data.success) {
                this.$message.error(res.data.message);
              } else {
                if (res.data.data.userId !== null && res.data.data.userId !== "") {
                  this.active = 1;
                  this.passForm.userId = res.data.data.userId;
                } else {
                  this.$message.error('用户不存在，请检查手机号！！！');
                }
              }
            })
          } else {
            return false;
          }
        });
      },
      editBtnClick(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            let data ={
              userId:this.passForm.userId,
              password:this.passForm.password,
            }
            console.log(Qs.stringify(data));
            request({
              method: 'post',
              url: '/user/findPass',
              data: Qs.stringify(data)
            }).then(res => {
              if (!res.data.success) {
                this.$message.error(res.data.message);
              } else {
                this.active = 3;
              }
            })
          } else {
            return false;
          }
        });
      }
    }
  }
</script>

<style scoped>
  .title {
    height: 50px;
    width: 300px;
    text-align: center;
    margin: 30px auto;
    font-size: 20px;
  }

  .phone_form {
    width: 300px;
    margin: 0 auto;
    margin-top: 30px;
  }

  .sentCode {
    margin-left: 25px;
    width: 92px;
  }

  .next_btn {
    width: 200px;
    margin-left: 50px;
    margin-top: 30px;
    margin-bottom: 50px;
  }

  .edit_btn{
    width: 200px;
    margin-left: 50px;
    margin-top: 30px;
  }
</style>
