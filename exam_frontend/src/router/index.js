import Vue from "vue";
import Router from "vue-router";

Vue.use(Router);

/* Layout */
import Layout from "@/layout";

/**
 * Note: sub-menu only appear when route children.length >= 1
 * Detail see: https://panjiachen.github.io/vue-element-admin-site/guide/essentials/router-and-nav.html
 *
 * hidden: true                   if set true, item will not show in the sidebar(default is false)
 * alwaysShow: true               if set true, will always show the root menu
 *                                if not set alwaysShow, when item has more than one children route,
 *                                it will becomes nested mode, otherwise not show the root menu
 * redirect: noRedirect           if set noRedirect will no redirect in the breadcrumb
 * name:'router-name'             the name is used by <keep-alive> (must set!!!)
 * meta : {
    roles: ['admin','editor']    control the page roles (you can set multiple roles)
    title: 'title'               the name show in sidebar and breadcrumb (recommend set)
    icon: 'svg-name'             the icon show in the sidebar
    breadcrumb: false            if set false, the item will hidden in breadcrumb(default is true)
    activeMenu: '/example/list'  if set path, the sidebar will highlight the path you set
  }
 */

/**
 * constantRoutes
 * a base page that does not have permission requirements
 * all roles can be accessed
 */
export const constantRoutes = [
  {
    path: "/login",
    component: () => import("@/views/login/index"),
    hidden: true
  },

  {
    path: "/404",
    component: () => import("@/views/404"),
    hidden: true
  },
  {
    path: "/",
    component: Layout,
    redirect: "/dashboard",
    children: [
      {
        path: "dashboard",
        name: "Dashboard",
        component: () => import("@/views/dashboard/index"),
        meta: { title: "面板", icon: "dashboard", affix: true }
      }
    ]
  },
  {
    path: "/personal",
    component: Layout,
    redirect: "/personal/index",
    hidden: true,
    children: [
      {
        path: "index",
        name: "personal_index",
        component: () => import("@/views/info/index"),
        hidden: true,
        meta: {
          title: "个人信息修改",
          icon: "dashboard"
        }
      }
    ]
  }
];

/**
 * asyncRoutes
 * the routes that need to be dynamically loaded based on user roles
 */
export const asyncRoutes = [
  {
    path: "/admin",
    component: Layout,
    meta: {
      title: "系统管理",
      icon: "category",
      roles: ["admin.index", "roles.index", "modules.index"]
    },
    redirect: "/admin/index",
    alwaysShow: true,
    children: [
      {
        path: "index",
        name: "admin_index",
        component: () => import("@/views/system/admin/index"),
        meta: { title: "用户管理", roles: ["admin.index"] }
      },
      {
        path: "role",
        name: "role_index",
        component: () => import("@/views/system/role/index"),
        meta: { title: "角色管理", roles: ["roles.index"] }
      },
      {
        path: "permission",
        name: "permission_index",
        component: () => import("@/views/system/module/index"),
        meta: {
          title: "模块与功能管理",
          roles: ["modules.index"]
        }
      }
    ]
  },
  {
    path: "/members",
    component: Layout,
    meta: {
      title: "学生管理",
      icon: "category",
      roles: ["members.index"]
    },
    redirect: "/members/index",
    alwaysShow: true,
    children: [
      {
        path: "index",
        name: "members_index",
        component: () => import("@/views/members/index"),
        meta: { title: "学生列表", roles: ["members.index"] }
      }
    ]
  },
  {
    path: "/question",
    component: Layout,
    meta: {
      title: "题库管理",
      icon: "category",
      roles: [
        "questions.index",
        "question_types.index",
        "question_levels.index"
      ]
    },
    redirect: "/question/index",
    alwaysShow: true,
    children: [
      {
        path: "index",
        name: "QuestionIndex",
        component: () => import("@/views/question/list/index"),
        meta: { title: "题库列表", roles: ["questions.index"] }
      },
      {
        path: "type",
        name: "QuestionType",
        component: () => import("@/views/question/type/index"),
        meta: {
          title: "题目类型",
          roles: ["question_types.index"]
        }
      },
      {
        path: "level",
        name: "QuestionLevel",
        component: () => import("@/views/question/level/index"),
        meta: {
          title: "题目层次",
          roles: ["question_levels.index"]
        }
      }
    ]
  },
  {
    path: "/test",
    component: Layout,
    meta: {
      title: "考试管理",
      icon: "category",
      roles: ["tests.index"]
    },
    redirect: "/test/index",
    alwaysShow: true,
    children: [
      {
        path: "index",
        name: "TestIndex",
        component: () => import("@/views/test/index"),
        meta: { title: "考试列表", roles: ["test.index"] }
      }
    ]
  },
  {
    path: "/article",
    component: Layout,
    meta: {
      title: "文章管理",
      icon: "category",
      roles: ["articles.index"]
    },
    redirect: "/test/index",
    alwaysShow: true,
    children: [
      {
        path: "index",
        name: "TestIndex",
        component: () => import("@/views/article/index"),
        meta: { title: "文章列表", roles: ["articles.index"] }
      }
    ]
  },
  // 404 page must be placed at the end !!!
  { path: "*", redirect: "/404", hidden: true }
];

const createRouter = () =>
  new Router({
    // mode: 'history', // require service support
    scrollBehavior: () => ({ y: 0 }),
    routes: constantRoutes,
    base: "/admin/"
  });

const router = createRouter();

// Detail see: https://github.com/vuejs/vue-router/issues/1234#issuecomment-357941465
export function resetRouter() {
  const newRouter = createRouter();
  router.matcher = newRouter.matcher; // reset router
}

export default router;
