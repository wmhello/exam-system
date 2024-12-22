import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const Home = () => import('views/Home')
const About = () => import('views/About')
const Exam = () => import('views/Exam')
const Login = () => import('views/passport/Login')
const Register = () => import('views/passport/Register')
const Profile = () => import('views/profile/Profile')
const ProfileIndex = ()=>import('components/ProfileIndex')
//学生
const ExamList = () => import('views/profile/student/ExamList')
const Score = () => import('views/profile/student/Score')

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
    meta: {
      roles: ['', '管理员', '学生', '老师',]
    }
  },
  {
    path: '/about',
    name: 'About',
    component: About
  },
  {
    path: '/login',
    name: 'Login',
    component: Login
  },
  {
    path: '/exam',
    redirect:"/"
  },
  {
    path: '/exam/:id',
    name: 'Exam',
    component: Exam
  },
  {
    path: '/profile',
    name: 'Profile',
    component: Profile,
    children: [
      {
        path: '',
        redirect: 'index'
      },
      {
        path: 'index',
        component:ProfileIndex
      },
      {
        path: 'student/examlist',
        component: ExamList
      },
      {
        path: 'student/score',
        component: Score
      },
    ]
  }
]

const router = new VueRouter({
  routes,
  mode: "history",
  base: "/web/"
})

const url = ['', 'login', 'register', 'zhibo', 'kecheng', 'about']
router.beforeEach((to, from, next) => {
  /*for (let u of url) {
    console.log(u);
    if (to.path === '/' + u) {
      next();
    }
  }*/
  /*console.log(to.path);
  let token = localStorage.getItem('Authorization');
  if (token === null || token === '') {
    next('/login');
  } else {
    next();
  }*/
  next()

})

export default router
