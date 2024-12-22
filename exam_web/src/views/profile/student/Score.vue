<template>
  <div>
    <el-table
      :data="scoreList"
      border
      stripe
      size="medium "
      style="width: 100%">
      <el-table-column
        type="index">
      </el-table-column>
      <el-table-column
        label="考试开始时间"
        sortable
        width="180">
        <template slot-scope="scope">
          {{scope.row.start_time | showTime}}
        </template>
      </el-table-column>
      <el-table-column
        label="考试结束时间"
        sortable
        width="180">
                <template slot-scope="scope">
          {{scope.row.end_time | showTime}}
        </template>
      </el-table-column>
      <el-table-column
        prop="correct_num"
        label="正确题目（数量）"
        sortable
        width="150">
      </el-table-column>
      <el-table-column
        prop="incorrect_num"
        label="错误题目（数量）"
        sortable
        width="150">
      </el-table-column>
      <el-table-column
        prop="final_score"
        label="总分数"
        sortable
        width="100">
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
  import {request, Qs} from "network/request";
  var dayjs = require('dayjs')
  export default {
    name: "Score",
    data(){
      return{
        scoreList:[]
      }
    },
    filters: {
        showTime( val){
          return  dayjs(val).format('YYYY-MM-DD HH:mm:ss')
        }
    },
    created() {
      request({
        method: 'get',
        url: '/test_shows'
      }).then(res => {
        this.scoreList = res.data.data
    
    })
  }
  }
</script>

<style scoped>

</style>
