import { getToken } from "@/utils/auth";

export default {
  data() {
    return {
      tableData: [],
      page: {
        total: null,
        per_page: 10,
        sizes: [10, 20, 25, 50],
        current_page: 1
      },
      rules: {},
      dialogFormVisible: false,
      isNew: false,
      isEdit: false,
      title: "",
      cmdTitle: "",
      formData: {},
      uploadVisible: false,
      searchForm: {},
      isPaginate: false
    };
  },

  async created() {
    let { SearchModel, rules } = require(`@/model/${this.module}`);
    this.searchForm = new SearchModel();
    this.rules = rules;
    await this.fetchData();
  },
  methods: {
    async findReset() {
      let { SearchModel } = require(`@/model/${this.module}`);
      this.searchForm = new SearchModel();
      this.page.current_page = 1;
      this.fetchData();
    },
    find(event) {
      this.$nextTick().then(() => {
        this.page.current_page = 1;
        this.fetchData();
      });
    },
    async fetchData() {
      let { index } = require(`@/api/${this.module}`);
      const res = await index(
        this.page.current_page,
        this.page.per_page,
        this.searchForm
      );
      if (
        res.data instanceof Object &&
        typeof this.transfromData === "function"
      ) {
        let data = this.transfromData(res.data);
        this.tableData = data;
      } else {
        this.tableData = res.data;
      }
      let { rules } = require(`@/model/${this.module}`);
      this.rules = rules;
      if (res.meta) {
        // 分页
        res.meta.per_page = parseInt(res.meta.per_page);
        this.page = Object.assign(this.page, res.meta);
      } else {
        this.isPaginate = false; // 不分页
      }
    },
    async add() {
      let { Model } = require(`@/model/${this.module}`);
      this.formData = new Model();
      this.isNew = true;
      this.isEdit = false;
      this.setTitle();
      this.dialogFormVisible = true;
    },
    setTitle() {
      this.title = this.isNew === true ? this.newTitle : this.editTitle;
      this.cmdTitle = this.isNew === true ? "保存" : "修改";
    },
    async save(form) {
      this.$refs[form].validate(async valid => {
        if (valid) {
          try {
            if (this.isEdit) {
              let { update } = require(`@/api/${this.module}`);
              let res = await update(this.formData);
              this.$message.success("数据修改成功");
            }
            if (this.isNew) {
              let { store } = require(`@/api/${this.module}`);
              await store(this.formData);
              this.$message.success("数据增加成功");
            }
            this.fetchData();
            this.isEdit = false;
            this.isNew = false;
            this.dialogFormVisible = false;
          } catch (error) {
            let result = error.response.data;
            this.$message.error(result.info);
          }
        } else {
          this.$message.error("数据检验出错，请注意按照指定的规则输入");
          return false;
        }
      });
    },
    parseErrors(errors) {
      let info = "";
      let name = errors.name;
      if (Array.isArray(name)) {
        name.forEach(item => {
          info += item + ",";
        });
      }
      info = info.substring(0, str.length - 1);
      return info;
    },
    async handleUploadSuccess() {
      this.$message.success("导入文件成功");
      await this.fetchData();
      this.uploadVisible = false;
    },
    submitUpload() {
      this.$refs.upload.submit();
    },
    upload() {
      this.uploadVisible = true;
    },
    async edit(id) {
      let { show } = require(`@/api/${this.module}`);
      let { data } = await show(id);
      this.formData = data;
      this.isNew = false;
      this.isEdit = true;
      this.setTitle();
      this.dialogFormVisible = true;
    },
    async del(id) {
      try {
        await this.$confirm("此操作将永久删除, 是否继续?", "提示", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        });
        let { destroy } = require(`@/api/${this.module}`);
        await destroy(id);
        this.$message({
          type: "success",
          message: "数据删除完成"
        });
        await this.fetchData();
      } catch (error) {
        let {info} = error.response.data
        this.$message({
          type: "error",
          message: info
        });
      }
    },
    async sizeChange(val) {
      this.page.per_page = val;
      await this.fetchData();
    },
    async currentChange(val) {
      this.page.current_page = val;
      await this.fetchData();
    }
  },
  filters: {}
};
