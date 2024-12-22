export const rules = {
  question: [{ required: true, message: "请输入题目的问题", trigger: "blur" }]
};

export function Model(
  question = "",
  type_id = 1,
  level_id = 1,
  a = "",
  b = "",
  c = "",
  d = "",
  correct = []
) {
  this.question = question;
  this.type_id = type_id;
  this.level_id = level_id;
  this.a = a;
  this.b = b;
  this.c = c;
  this.d = d;
  this.correct = correct;
}

export function SearchModel(type_id = null, level_id = null) {
  this.type_id = type_id;
  this.level_id = level_id;
}
