<template>
  <el-container>
    <el-header>
      <div style="margin: 0 auto;width: 300px;">
        <h1 style="text-align: center;margin-top: 20px">{{ exam.examName }}</h1>
        <!-- <h2 style="text-align: center;margin-top: 20px">
          倒计时： {{ minutes }} 分 {{ second }} 秒
        </h2> -->
      </div>
    </el-header>
    <el-main>
      <div class="pan">
        <div class="title">一、判断题(共 {{ panList.length }} 道)</div>
        <div class="exam_item" v-for="(item, index) in panList" :key="index">
          <div class="item_desc">{{ index + 1 }}.{{ item.question }}</div>
          <div class="item_option">
            <el-radio-group v-model="item['choose']">
              <el-radio label="A" value="A">{{ item.a }}</el-radio>
              <el-radio label="B" value="B">{{ item.b }}</el-radio>
            </el-radio-group>
          </div>
        </div>
      </div>
      <div class="dan">
        <div class="title">二、单选题(共 {{ danList.length }} 道)</div>
        <div class="exam_item" v-for="(item, index) in danList" :key="index">
          <div class="item_desc">{{ index + 1 }}.{{ item.question }}</div>
          <div class="item_option">
            <el-radio-group v-model="item['choose']">
              <el-radio value="A" label="A">{{ item.a }}</el-radio>
              <el-radio label="B" value="B">{{ item.b }}</el-radio>
              <el-radio label="C" value="C">{{ item.c }}</el-radio>
              <el-radio label="D" value="D">{{ item.d }}</el-radio>
            </el-radio-group>
          </div>
        </div>
      </div>
      <div class="duo">
        <div class="title">三、多选题(共 {{ duoList.length }} 道)</div>
        <div class="exam_item" v-for="(item, index) in duoList" :key="index">
          <div class="item_desc">{{ index + 1 }}.{{ item.question }}</div>
          <div class="item_option">
            <el-checkbox-group v-model="item['choose']">
              <el-checkbox value="A" :label="item.a"></el-checkbox>
              <el-checkbox value="B" :label="item.b"></el-checkbox>
              <el-checkbox value="C" :label="item.c"></el-checkbox>
              <el-checkbox value="D" :label="item.d"></el-checkbox>
            </el-checkbox-group>
          </div>
        </div>
      </div>
      <div style="margin-top: 40px">
        <el-button type="primary" @click="btnClick">提交试卷</el-button>
      </div>
    </el-main>
  </el-container>
</template>

<script>
import { request, Qs } from "network/request";

export default {
  name: "Exam",
  data() {
    return {
      exam: "",
      panList: [],
      danList: [],
      duoList: [],
      userId: this.$store.state.user.userId,
      examId: this.$route.params.id,
      minutes: 0, //分
      seconds: 0, //秒
      panAndDanOptions: {},
      duoOptions: {}
    };
  },
  created() {
    if (!this.$store.state.user.isLogin) {
      window.location.href = "/login";
    }
    request({
      method: "post",
      url: "/test_shows/create/" + this.examId
    })
      .then(res => {
        console.log(res);
        if (!res.data) {
          this.$message.error(res.data.message);
        } else {
          this.exam = res.data.data.paper;

          this.panList = res.data.data.paper.filter(obj => obj.type_id === 3);
          this.danList = res.data.data.paper.filter(obj => obj.type_id === 1);
          this.duoList = res.data.data.paper.filter(obj => obj.type_id === 2);
          this.duoList.forEach(v => {
            v.choose = []; // 多选题的显示效果
          });
        }
      })
      .catch(res => {
        this.$message.error("查询信息失败，请稍后再试");
      });
  },
  methods: {
    num(n) {
      // 倒计时结束重新刷新页面
      if (this.minutes === 15 && this.seconds === 0) {
        this.$message.warning("考试还剩15分钟结束!请抓紧时间!");
      }
      if (this.minutes === 0 && this.seconds === 30) {
        this.$message.error("30秒后将自动提交试卷");
      }
      if (this.minutes === 0 && this.seconds === 1) {
        this.btnClick();
      }
      return n < 10 ? "0" + n : "" + n;
    },
    // 倒计时
    timer() {
      const _this = this;
      const time = window.setInterval(function() {
        if (_this.seconds === 0 && _this.minutes !== 0) {
          _this.seconds = 59;
          _this.minutes -= 1;
        } else if (_this.minutes === 0 && _this.seconds === 0) {
          _this.seconds = 0;
          window.clearInterval(time);
        } else {
          _this.seconds -= 1;
        }
      }, 1000);
    },
    btnClick() {
      let answer = [];
      answer = [...this.panList, ...this.danList, ...this.duoList];
      console.log(answer);
      request({
        method: "post",
        url: "/test_shows/update/" + this.examId,
        data: {
          answer: JSON.stringify(answer)
        }
      }).then(res => {
        let { info } = res.data;
        this.$message.success(info);
        this.$router.push("/profile/student/score");
      });
    }
  },
  mounted() {
    // 倒计时
    this.timer();
  },
  watch: {
    // 倒计时
    second: {
      handler(newVal) {
        this.num(newVal);
      }
    },
    // 倒计时
    minute: {
      handler(newVal) {
        this.num(newVal);
      }
    }
  },
  computed: {
    // 倒计时
    second() {
      return this.num(this.seconds);
    },
    minute() {
      return this.num(this.minutes);
    }
  }
};
</script>

<style scoped>
.el-container {
  width: 800px;
  margin: 0 auto;
}

.el-main {
  margin: 0 auto;
  margin-top: 20px;
  width: 800px;
}

.el-radio {
  margin-top: 20px;
}

.el-checkbox {
  margin-top: 20px;
}

.pan {
  margin-top: 20px;
}

.dan {
  margin-top: 20px;
}

.duo {
  margin-top: 20px;
}

.title {
  font-size: 20px;
}

.exam_item {
  margin-top: 30px;
}

.item_desc {
  font-size: 15px;
}

.item_option {
  font-size: 10px;
  margin-top: 20px;
}
</style>
