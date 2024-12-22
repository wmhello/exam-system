<template>
  <div class="warpper">
    <div class="toolbar">
      <el-button type="primary" plain @click="add">添加题库类型</el-button>
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
        <el-table-column prop="name" label="类型名称" width="150" />
        <el-table-column prop="desc" label="类型说明" min-width="200" />
        <el-table-column prop="total_num" label="类型数量" width="100" />
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
          label-position="right"
        >
          <el-form-item label="类型名称" prop="name">
            <el-input
              v-model="formData.name"
              autocomplete="off"
              placeholder="请输入题目类型名称"
              :disabled="isEdit"
            />
          </el-form-item>

          <el-form-item label="类型说明" prop="desc">
            <el-input
              v-model="formData.desc"
              autocomplete="off"
              placeholder="请输入题目类型说明"
            />
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
  </div>
</template>

<script>
import CURD from "@/mixin/CURD";

export default {
  name: "QuestionType",
  mixins: [CURD],
  data() {
    return {
      module: "question_type",
      newTitle: "新建题库类型信息",
      editTitle: "编辑题库类型信息",
      isPaginate: false
    };
  },
  async created() {},
  methods: {
    cancel() {
      this.dialogFormVisible = false;
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
