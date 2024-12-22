import request from "@/utils/request";
const url = "/questions";

export function index(page = 1, pageSize = 10, searchForm = {}) {
  const params = Object.assign({}, { page, pageSize }, searchForm);
  return request({
    url: `${url}`,
    method: "get",
    params
  });
}

export function show(id) {
  return request({
    url: `${url}/${id}`,
    method: "get"
  });
}

export function store(data) {
  return request({
    url: `${url}`,
    method: "post",
    data
  });
}

export function update(data) {
  return request({
    url: `${url}/${data.id}`,
    method: "patch",
    data
  });
}

export function destroy(id) {
  return request({
    url: `${url}/${id}`,
    method: "delete"
  });
}
