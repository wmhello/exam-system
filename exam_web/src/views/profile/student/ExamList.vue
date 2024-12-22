<template>
  <div>
    <el-table
      :data="examList"
      border
      stripe
      size="medium "
      style="width: 100%">
      <el-table-column
        type="index">
      </el-table-column>
      <el-table-column
        label="开始日期"
        width="170">
        <template slot-scope="scope">
          <span>{{scope.row.start_time | showDate}}</span>
        </template>  
      </el-table-column>
      <el-table-column
        label="结束日期"
        width="170">
        <template slot-scope="scope">
          <span>{{scope.row.end_time | showDate}}</span>
        </template>
      </el-table-column>
      <el-table-column
        prop="name"
        label="考试名字"
        width="190">
      </el-table-column>
      <el-table-column
        prop="time"
        label="考试时长(分钟)"
        width="80">
      </el-table-column>
      <el-table-column
        prop="examId"
        label="操作"
        width="100">
        <template slot-scope="scope">
          <el-button @click="toExam(scope.$index, scope.row)" type="primary">参与考试</el-button>
        </template>
      </el-table-column>
    </el-table>
  </div>

</template>

<script>
  import {request, Qs} from "network/request";
  var dayjs = require('dayjs')
  export default {
    name: "ProfilrIndex",
    data(){
      return{
        examList :[],
        subjectList: [],
        subjectId: '',
      }
    },
    filters: {
        showDate(val){
          return dayjs(val).format('YYYY-MM-DD');  
        }
    },
    created() {
      request({
        method: 'get',
        url: '/tests/list'
      }).then(res => {
        if (!res.data) {
          this.$message.error(res.data.message);
        } else {
          this.examList = res.data.data;
        }
      }).catch(res => {
          this.$message.error("查询信息失败，请稍后再试");
        }
      )
    },
    methods:{
      toExam(index,row){
        this.$confirm('确定参加此次考试吗, 中途不能退出，是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$router.replace('/exam/'+row.id)
        }).catch(() => {
        });
      }
    }
  }
</script>

<style scoped>

</style>
