export const rules = {
  title: [{ required: true, message: "请输入标题", trigger: "blur" }],
  author: [{ required: true, message: "请输入作者", trigger: "blur" }],
  content: [{ required: true, message: "请输入内容", trigger: "blur" }]
};

export function Model(title = "", author = "", content = "") {
  this.title = title;
  this.author = author;
  this.content = content;
}

export function SearchModel() {}
