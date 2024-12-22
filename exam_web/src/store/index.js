import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    user: {
      userId: 0,
      userName: '',
      sex: '',
      age: 0,
      lastLoginTime: '',
      roleName: '',
      phone: '',
      email: '',
      qq: '',
      isLogin: false,
      Authorization: '',
    }
  },
  mutations: {
    changeLogin(state, user) {
      state.user.userId = user.userId;
      state.user.roleName = user.roleName;
      state.user.isLogin = true;
      state.user.Authorization = user.Authorization;
    },
    resetState(state) {
      state.user.userId = 0;
      state.user.userName = '';
      state.user.sex = '';
      state.user.age = 0;
      state.user.lastLoginTime = '';
      state.user.roleName = '';
      state.user.phone = '';
      state.user.email = '';
      state.user.qq = '';
      state.user.isLogin = false;
      state.user.Authorization = '';
    },
    getUserInfo(state,data){
      state.user.userName = data.user.userName
      state.user.sex = data.user.sex;
      state.user.age = data.user.age;
      state.user.lastLoginTime = data.user.lastLoginTime;
      state.user.phone = data.phone;
      state.user.email = data.email;
      state.user.qq = data.phone;
    }
  },
  actions: {},
  modules: {}
})
