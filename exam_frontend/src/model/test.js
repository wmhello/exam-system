export const rules = {
  name: [{ required: true, message: "请输入测试名称", trigger: "blur" }],
  start_time: [
    {
      required: true,
      message: "请选择测试开始时间",
      trigger: "blur"
    }
  ],
  end_time: [
    {
      required: true,
      message: "请选择测试结束时间",
      trigger: "blur"
    }
  ],
  score: [
    {
      required: true,
      message: "请输入分值",
      trigger: "blur"
    }
  ],
  time: [
    {
      required: true,
      message: "请输入分值",
      trigger: "blur"
    }
  ]
};

export function Model(
  name = "",
  start_time = null,
  end_time = null,
  score = 0,
  time = 60,
  test_rules = [
    { type_id: 1, num: 0, score: 0, total: 0 },
    { type_id: 2, num: 0, score: 0, total: 0 },
    { type_id: 3, num: 0, score: 0, total: 0 }
  ],
  status = true
) {
  this.name = name;
  this.start_time = start_time;
  this.end_time = end_time;
  this.score = score;
  this.time = time;
  this.test_rules = test_rules;
  this.status = status;
}

export function SearchModel() {}
