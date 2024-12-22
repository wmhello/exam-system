import { login, logout, getInfo } from "@/api/user";
import {
  getToken,
  setToken,
  removeToken,
  getExpiresTime,
  getIsAutoLogin,
  expiresDayVar,
  setTokenExpiresIn,
  removeTokenExpiresIn
} from "@/utils/auth";
import { resetRouter } from "@/router";

const state = {
  token: getToken(),
  name: "",
  avatar: "",
  roles: [],
  permissions: []
};

const mutations = {
  SET_TOKEN: (state, token) => {
    state.token = token;
  },
  SET_NAME: (state, name) => {
    state.name = name;
  },
  SET_AVATAR: (state, avatar) => {
    state.avatar = avatar;
  },
  SET_ROLES: (state, roles) => {
    state.roles = roles;
  },
  SET_PERMISSIONS: (state, permissions) => {
    state.permissions = permissions;
  }
};

const actions = {
  // user login
  login({ commit }, userInfo) {
    const { username, password } = userInfo;
    return new Promise((resolve, reject) => {
      login({ username: username.trim(), password: password })
        .then(response => {
          const token = response.access_token;
          const expires_in = response.expires_in;
          commit("SET_TOKEN", token);
          let expiresDay = null;
          if (Number(getIsAutoLogin()) === 1) {
            expiresDay = expiresDayVar;
          }
          setToken(token, expiresDay);
          const expiresTime = getExpiresTime(expires_in);
          setTokenExpiresIn(expiresTime, expiresDay);
          resolve();
        })
        .catch(error => {
          reject(error);
        });
    });
  },

  // get user info
  getInfo({ commit, state }) {
    return new Promise((resolve, reject) => {
      getInfo(state.token)
        .then(response => {
          const { data } = response;

          if (!data) {
            reject("Verification failed, please Login again.");
          }
          const { roles, permissions, nickname, avatar } = data;
          // roles must be a non-empty array
          if (!roles || roles.length <= 0) {
            reject("getInfo: roles must be a non-null array!");
          }
          const arrRoles = roles.map(item => {
            return item.role_name;
          });
          data["roles"] = arrRoles;
          commit("SET_ROLES", arrRoles);
          commit("SET_NAME", nickname);
          commit("SET_AVATAR", avatar);
          commit("SET_PERMISSIONS", permissions);
          resolve(data);
        })
        .catch(error => {
          reject(error);
        });
    });
  },

  // user logout
  logout({ commit, state }) {
    return new Promise((resolve, reject) => {
      logout(state.token)
        .then(() => {
          commit("SET_TOKEN", "");
          commit("SET_ROLES", []);
          removeToken();
          resetRouter();
          resolve();
        })
        .catch(error => {
          reject(error);
        });
    });
  },

  // remove token
  // resetToken({ commit }) {
  //   return new Promise((resolve) => {
  //     commit('SET_TOKEN', '')
  //     commit('SET_ROLES', [])
  //     removeToken()
  //     resolve()
  //   })
  // }

  resetToken({ commit }, logInfo) {
    const { accessToken, expiresIn } = logInfo;
    return new Promise((resolve, reject) => {
      if (!accessToken) {
        commit("SET_TOKEN", "");
        removeToken();
        removeTokenExpiresIn();
      } else {
        let expiresDay = null;
        if (Number(getIsAutoLogin()) === 1) {
          expiresDay = expiresDayVar;
        }
        commit("SET_TOKEN", accessToken);
        setToken(accessToken, expiresDay);
        const expiresTime = getExpiresTime(expiresIn);
        setTokenExpiresIn(expiresTime, expiresDay);
      }
      resolve();
    });
  }
};

export default {
  namespaced: true,
  state,
  mutations,
  actions
};
