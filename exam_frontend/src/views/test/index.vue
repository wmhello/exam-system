<template>
  <div class="warpper">
    <div class="toolbar">
      <el-button type="primary" plain @click="add">添加考试</el-button>
      <!-- <el-button type="primary" plain @click="uploadData">导入题库</el-button> -->
    </div>
    <div class="table">
      <el-table
        :data="tableData"
        size="small"
        stripe
        border
        style="width: 100%"
      >
        <el-table-column prop="id" label="标识" width="50" align="center" />
        <el-table-column prop="name" label="测试名称" min-width="150" />
        <el-table-column label="开始时间" width="150">
          <template v-slot="scope">
            <span>{{ scope.row.start_time | showDate }}</span>
          </template>
        </el-table-column>
        <el-table-column label="结束时间" width="150">
          <template v-slot="scope">
            <span>{{ scope.row.end_time | showDate }}</span>
          </template>
        </el-table-column>
        <el-table-column prop="score" label="测试分值" width="80" />
        <el-table-column prop="time" label="测试时间" width="80" />
        <el-table-column label="测试规则" width="300">
          <template v-slot="scope">
            <div v-html="showRules(scope.row.test_rules, questionTypes)" />
          </template>
        </el-table-column>
        <el-table-column prop="status" label="状态" width="150" />
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button plain @click="edit(scope.row.id)">编辑</el-button>
            <el-button plain type="danger" @click="del(scope.row.id)"
              >删除</el-button
            >
          </template>
        </el-table-column>
      </el-table>
    </div>
    <div class="page">
      <el-pagination
        v-if="isPaginate"
        :current-page="page.current_page"
        :page-sizes="page.sizes"
        :page-size="page.per_page"
        layout="total, sizes, prev, pager, next"
        :total="page.total"
        @size-change="sizeChange"
        @current-change="currentChange"
      />
    </div>
    <div class="form">
      <el-dialog
        :title="title"
        :visible.sync="dialogFormVisible"
        :close-on-click-modal="false"
      >
        <el-form
          v-if="dialogFormVisible"
          ref="ruleForm"
          :model="formData"
          :rules="rules"
          label-position="top"
        >
          <el-form-item label="测试名称" prop="name">
            <el-input
              v-model="formData.name"
              autocomplete="off"
              placeholder="请输入测试名称"
            />
          </el-form-item>
          <el-row :gutter="20">
            <el-col :span="12">
              <el-form-item label="开始时间" prop="start_time">
                <el-date-picker
                  v-model="formData.start_time"
                  style="width: 100%"
                  type="datetime"
                  placeholder="选择开始时间"
                  value-format="timestamp"
                />
              </el-form-item>
            </el-col>
            <el-col :span="12">
              <el-form-item label="结束时间" prop="end_time">
                <el-date-picker
                  v-model="formData.end_time"
                  style="width: 100%"
                  type="datetime"
                  placeholder="选择结束时间"
                  value-format="timestamp"
                />
              </el-form-item>
            </el-col>
          </el-row>
          <el-row :gutter="20">
            <el-col :span="12">
              <el-form-item label="测试时长" prop="time">
                <el-input
                  v-model="formData.time"
                  autocomplete="off"
                  placeholder="请输入测试时长"
                />
              </el-form-item>
            </el-col>
            <el-col :span="12">
              <el-form-item label="测试分值" prop="score">
                <el-input
                  v-model="formData.score"
                  disabled
                  autocomplete="off"
                  placeholder="请输入测试名称"
                />
              </el-form-item>
            </el-col>
          </el-row>

          <el-form-item label="测试规则">
            <el-checkbox-group v-model="selectType">
              <el-checkbox
                v-for="(item, index) in questionTypes"
                :key="index"
                :label="item.id"
                disabled
                >{{ item.name }}</el-checkbox
              >
            </el-checkbox-group>
          </el-form-item>
          <el-row :gutter="10" class="grid">
            <el-col :span="9"> <h4>题目类型</h4></el-col>
            <el-col :span="5"> <h4>题目数量</h4></el-col>
            <el-col :span="5"> <h4>题目分值</h4></el-col>
            <el-col :span="5"> <h4>合计分值</h4></el-col>
          </el-row>
          <div
            v-for="(item, index) in formData.test_rules"
            :key="index"
            class="rules"
          >
            <el-row :gutter="10">
              <el-col :span="9">
                <el-select v-model="item.type_id" disabled style="width: 100%">
                  <el-option
                    v-for="(v1, j) in questionTypes"
                    :key="j"
                    :label="v1.name"
                    :value="v1.id"
                  />
                </el-select>
              </el-col>
              <el-col :span="5">
                <el-input v-model="item.num" placeholder="请输入题目数量" />
              </el-col>
              <el-col :span="5">
                <el-input v-model="item.score" placeholder="请输入题目分值" />
              </el-col>
              <el-col :span="5">
                <el-input v-model="item.total" disabled />
              </el-col>
            </el-row>
          </div>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button @click="cancel">取 消</el-button>
          <el-button type="primary" @click="save('ruleForm')">{{
            cmdTitle
          }}</el-button>
        </div>
      </el-dialog>
    </div>
  </div>
</template>

<script>
import CURD from "@/mixin/CURD";
import { index as getQuestionType } from "@/api/question_type";
import moment from "moment";
export default {
  name: "TestIndex",
  filters: {
    showDate(value) {
      return moment(value).format("YYYY-MM-DD HH::mm::ss");
    }
  },
  mixins: [CURD],
  data() {
    return {
      module: "test",
      newTitle: "新建考试信息",
      editTitle: "编辑考试信息",
      isPaginate: true,
      selectType: [1, 2, 3],
      questionTypes: []
    };
  },
  watch: {
    "formData.test_rules": {
      handler(newValue, oldValue) {
        if (oldValue === undefined) {
          return "";
        }
        let result = 0;
        newValue.forEach(item => {
          item.total = item.num * item.score;
          result += parseFloat(item.total);
        });
        this.formData.score = result;
      },
      deep: true
    }
  },
  async created() {
    const { data } = await getQuestionType();
    this.questionTypes = data;
  },
  methods: {
    showRules(value, types) {
      const result = JSON.parse(value);
      let tips = "";
      result.forEach(item => {
        if (item.total !== 0) {
          tips +=
            getTypeName(item.type_id, types) +
            "---有" +
            item.num +
            "题---每题" +
            item.score +
            "分---合计" +
            item.total +
            "分<br>";
        }
      });
      return tips;
      function getTypeName(id, types) {
        const item = types.find(item => item.id === id);
        if (item) {
          return item.name;
        } else {
          return "";
        }
      }
    },
    transfromData(data) {
      return data;
    },
    cancel() {
      this.dialogFormVisible = false;
    },
    async edit(id) {
      const { show } = require(`@/api/${this.module}`);
      const { data } = await show(id);
      data.test_rules = JSON.parse(data.test_rules);
      this.formData = data;
      this.isNew = false;
      this.isEdit = true;
      this.setTitle();
      this.dialogFormVisible = true;
    }
  }
};
</script>

<style>
.table,
.toolbar,
.page {
  margin: 20px;
}

.toolbar {
  margin-top: 10px;
  border: 1px solid #ccc;
  padding: 5px;
}
.table {
  margin-bottom: 10px;
}
.page {
  margin-top: 10px;
}
.page {
  text-align: center;
}
.rules {
  margin-bottom: 10px;
}
.grid h4 {
  text-align: center;
}
</style>
