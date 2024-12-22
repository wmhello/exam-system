<template>
  <div class="main">
    <div class="main_right">
      <div class="main_r_title">
        <div class="title_left">
          <img src="~assets/img/passport/user.png" />
          <div class="pp">登录</div>
        </div>
        <!--        <div class="title_right">
          <div class="title_right_txt">
            还没有账号？
            <a href="javascript:void(0)" @click="$router.push('/register')"
              ><span class="blue">立即注册</span></a
            >
          </div>
        </div> -->
      </div>
      <div class="main_r_content">
        <div class="txt">
          <el-input
            v-model="loginForm.account"
            prefix-icon="el-icon-user-solid"
            size="large"
            placeholder="请输入注册手机号或用户名"
          ></el-input>
        </div>
        <div class="txt">
          <el-input
            placeholder="请输入密码"
            prefix-icon="el-icon-lock"
            size="large"
            v-model="loginForm.password"
            show-password
            @keyup.enter.native="btnClick"
          >
          </el-input>
        </div>
        <!--        <div class="xieyi">
          <el-checkbox v-model="checked">记住我</el-checkbox>
          <a href="javascript:void(0)" @click="$router.push('/find-pass')"
            ><span class="blue" style=" padding-left:130px; cursor:pointer"
              >忘记密码?</span
            ></a
          >
        </div> -->
        <el-button @click="login" id="Captcha" type="primary">登录</el-button>
      </div>
    </div>
  </div>
</template>

<script>
import { request, Qs } from "network/request";

export default {
  name: "Login",
  // mounted() {
  //   this.captcha = new TencentCaptcha(
  //     '2019980495',
  //     res => {
  //       if (res.ret === 0) {
  //         this.captchaNotice(res);
  //       }
  //     }
  //   );
  // },
  data() {
    return {
      loginForm: {
        username: "",
        password: ""
      },
      checked: true,
      captcha: "",
      userIp: sessionStorage.getItem("ip")
    };
  },
  methods: {
    btnClick() {
      this.$router.push("/profile/index");
      // if (this.loginForm.account === "" || this.loginForm.password === "") {
      //   this.$message.error("账号或密码不能为空");
      // } else {
      //   this.captcha.show();
      // }
    },
    login() {
      let data = {
        username: this.loginForm.account,
        password: this.loginForm.password
      };
      request({
        method: "post",
        url: "/login",
        data: Qs.stringify(data)
      })
        .then(res => {
          if (!res.data) {
            this.$message.error(res.data.message);
          } else {
            window.sessionStorage.setItem("store", JSON.stringify(res.data));
            this.$store.commit("changeLogin", res.data);
            this.$router.push("/profile/index");
          }
        })
        .catch(res => {
          this.$message.error("登录失败，请稍后再试");
        });
    },
    captchaNotice(res) {
      request({
        method: "get",
        url: "/captcha",
        params: {
          ticket: res.ticket,
          userIp: this.userIp,
          randstr: res.randstr
        }
      })
        .then(res => {
          if (!res.data.success) {
            this.$message.error(res.data.message);
          } else {
            this.login();
          }
        })
        .catch(res => {
          this.$message.error("验证失败，请稍后再试");
        });
    }
  }
};
</script>

<style scoped>
.main {
  height: 560px;
  width: 100%;
  background: url(~assets/img/passport/bk-login.png) no-repeat;
  background-size: 100% 100%;
  overflow: hidden;
  margin: 0 auto;
}

.main_right {
  width: 456px;
  height: 520px;
  float: right;
  margin-top: 20px;
  margin-right: 36px;
  background-color: rgba(255, 255, 255, 0.7);
  border-radius: 4px;
  box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
  position: relative;
}

.main_r_title {
  height: 74px;
  margin: 0 20px;
  margin-top: 20px;
  border-bottom: 1px solid #cccccc;
}

.title_left img {
  float: left;
  height: 68px;
}

.title_left .pp {
  float: left;
  height: 70px;
  line-height: 70px;
  font-size: 18px;
  color: #333;
  padding-left: 20px;
  letter-spacing: 9px;
}

.title_left {
  float: left;
}

.title_right {
  float: right;
  height: 70px;
  font-size: 14px;
  color: #666;
}

.title_right_txt {
  margin-top: 40px;
}

.main_r_content {
  margin: 0 78px;
}

.txt {
  height: 40px;
  margin-top: 35px;
}

.el-input {
  width: 300px;
  border: 1px solid #ccc;
}

.xieyi {
  clear: both;
  padding-top: 35px;
  font-size: 14px;
  color: #5a5a5a;
  height: 30px;
  line-height: 30px;
}

.el-button {
  width: 300px;
  height: 40px;
  margin-top: 30px;
}
</style>
