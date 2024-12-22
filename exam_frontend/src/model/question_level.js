export const rules = {
  name: [{ required: true, message: "请输入题目层次名称", trigger: "blur" }]
};

export function Model(name = "", desc = "", total_num = 0) {
  this.name = name;
  this.desc = desc;
  this.total_num = total_num;
}

export function SearchModel() {}
