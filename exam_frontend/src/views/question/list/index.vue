<template>
  <div class="warpper">
    <div class="toolbar">
      <el-button type="primary" plain @click="add">添加题库</el-button>
      <!-- <el-button type="primary" plain @click="uploadData">导入题库</el-button> -->
      <el-radio-group v-model="searchForm.type_id" @change="find">
        <el-radio-button
          v-for="item in questionTypeList"
          :key="item.id"
          :label="item.id"
          >{{ item.name }}</el-radio-button
        >
      </el-radio-group>
      <el-radio-group v-model="searchForm.level_id" @change="find">
        <el-radio-button
          v-for="item in questionLevelList"
          :key="item.id"
          :label="item.id"
          >{{ item.name }}</el-radio-button
        >
      </el-radio-group>
      <el-button plain type="success" @click="findReset">重置选择</el-button>
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
        <el-table-column prop="question" label="问题" min-width="150" />
        <el-table-column label="题目类型" width="80">
          <template v-slot="scope">
            <span>{{
              scope.row.type_id | showQuestionType(questionTypeList)
            }}</span>
          </template>
        </el-table-column>
        <el-table-column label="题目层次" width="80">
          <template v-slot="scope">
            <span>{{
              scope.row.level_id | showQuestionLevel(questionLevelList)
            }}</span>
          </template>
        </el-table-column>
        <el-table-column prop="a" label="答案A" width="150" />
        <el-table-column prop="b" label="答案B" width="150" />
        <el-table-column prop="c" label="答案C" width="150" />
        <el-table-column prop="d" label="答案D" width="150" />
        <el-table-column label="正确答案" width="200">
          <template v-slot="scope">
            <el-tag
              v-for="(item, index) in scope.row.correct"
              :key="index"
              style="margin-right: 10px;"
              >{{ item }}</el-tag
            >
          </template>
        </el-table-column>

        <el-table-column label="操作" width="200">
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
          label-position="left"
        >
          <el-row :gutter="20">
            <el-col :span="12">
              <el-form-item label="类型选择" prop="type_id">
                <el-radio-group v-model="formData.type_id" @change="typeHandle">
                  <el-radio-button
                    v-for="item in questionTypeList"
                    :key="item.id"
                    :label="item.id"
                    >{{ item.name }}</el-radio-button
                  >
                </el-radio-group>
              </el-form-item>
            </el-col>
            <el-col :span="12">
              <el-form-item label="难易选择" prop="level_id">
                <el-radio-group v-model="formData.level_id">
                  <el-radio-button
                    v-for="item in questionLevelList"
                    :key="item.id"
                    :label="item.id"
                    >{{ item.name }}</el-radio-button
                  >
                </el-radio-group>
              </el-form-item>
            </el-col>
          </el-row>
          <el-form-item label="题目" prop="question">
            <el-input
              v-model="formData.question"
              autocomplete="off"
              placeholder="请输入题目"
            />
          </el-form-item>
          <el-form-item v-if="select.a" label="答案A" prop="a">
            <el-input
              v-model="formData.a"
              autocomplete="off"
              placeholder="请输入A答案"
            />
          </el-form-item>
          <el-form-item v-if="select.b" label="答案B" prop="b">
            <el-input
              v-model="formData.b"
              autocomplete="off"
              placeholder="请输入答案B"
            />
          </el-form-item>
          <el-form-item v-if="select.c" label="答案C" prop="C">
            <el-input
              v-model="formData.c"
              autocomplete="off"
              placeholder="请输入答案C"
            />
          </el-form-item>
          <el-form-item v-if="select.d" label="答案D" prop="d">
            <el-input
              v-model="formData.d"
              autocomplete="off"
              placeholder="请输入答案D"
            />
          </el-form-item>
          <el-form-item label="正确答案" prop="correct">
            <el-checkbox-group
              v-model="formData.correct"
              @change="correctHandle"
            >
              <el-checkbox v-if="select.a" label="A">A</el-checkbox>
              <el-checkbox v-if="select.b" label="B">B</el-checkbox>
              <el-checkbox v-if="select.c" label="C">C</el-checkbox>
              <el-checkbox v-if="select.d" label="D">D</el-checkbox>
            </el-checkbox-group>
          </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button @click="cancel">取 消</el-button>
          <el-button type="primary" @click="save('ruleForm')">{{
            cmdTitle
          }}</el-button>
        </div>
      </el-dialog>
    </div>
    <UploadXls :show.sync="isShow" :module="module" />
  </div>
</template>

<script>
import CURD from "@/mixin/CURD";
import UploadXls from "@/components/UploadXls";
import { index as getQuestionType } from "@/api/question_type";
import { index as getQuestionLevel } from "@/api/question_level";

export default {
  name: "QuestionIndex",
  components: {
    UploadXls
  },
  filters: {
    showQuestionType(value, result) {
      const item = result.find(v => v.id === value);
      return item ? item.name : "";
    },
    showQuestionLevel(value, result) {
      const item = result.find(v => v.id === value);
      return item ? item.name : "";
    }
  },
  mixins: [CURD],
  data() {
    return {
      module: "question",
      newTitle: "新建题库信息",
      editTitle: "编辑题库信息",
      isPaginate: true,
      isShow: false,
      questionTypeList: [],
      questionLevelList: [],
      select: {
        a: true,
        b: true,
        c: true,
        d: true
      },
      min: 1,
      max: 4
    };
  },
  async created() {
    const { data } = await getQuestionType();
    this.questionTypeList = data;
    const res = await getQuestionLevel();
    this.questionLevelList = res.data;
  },
  methods: {
    correctHandle(value) {
      const result = this.questionTypeList;
      const item = result.find(v => v.id === this.formData.type_id);
      selectMark.bind(this)(item.name);
      function selectMark(name) {
        const opt = {
          单选题: () => {
            if (this.formData.correct.length > 1) {
              this.formData.correct.shift();
            }
          },
          多选题: () => {
            this.select.a = true;
            this.select.b = true;
            this.select.c = true;
            this.select.d = true;
          },
          判断题: () => {
            if (this.formData.correct.length > 1) {
              this.formData.correct.shift();
            }
          }
        };
        opt[name]();
      }
    },
    // 选择不同的题目类型，标记不同的内容
    selectMark(name) {
      const opt = {
        单选题: () => {
          this.select.a = true;
          this.select.b = true;
          this.select.c = true;
          this.select.d = true;
          this.formData.correct = [];
        },
        多选题: () => {
          this.select.a = true;
          this.select.b = true;
          this.select.c = true;
          this.select.d = true;
          this.formData.correct = [];
        },
        判断题: () => {
          this.select.a = true;
          this.select.b = true;
          this.select.c = false;
          this.select.d = false;
          this.formData.correct = [];
        }
      };
      opt[name]();
    },
    typeHandle() {
      const result = this.questionTypeList;
      const item = result.find(v => v.id === this.formData.type_id);
      item ? this.selectMark(item.name) : "";
    },
    cancel() {
      this.dialogFormVisible = false;
    },
    uploadData() {
      this.isShow = true;
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
</style>
