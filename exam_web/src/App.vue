<template>
  <div id="app">
    <Index></Index>
  </div>
</template>

<script>
import Index from "views/Index";

export default {
  name: "App",
  data() {
    return {};
  },
  components: {
    Index
  },
  created() {
    //在页面加载时读取sessionStorage里的状态信息
    if (sessionStorage.getItem("store")) {
      this.$store.replaceState(
        Object.assign(
          {},
          this.$store.state,
          JSON.parse(sessionStorage.getItem("store"))
        )
      );
    }

    //在页面刷新时将vuex里的信息保存到sessionStorage里
    window.addEventListener("beforeunload", () => {
      sessionStorage.setItem("store", JSON.stringify(this.$store.state));
    });
  }
};
</script>
<style>
@import "assets/css/base.css";
</style>
