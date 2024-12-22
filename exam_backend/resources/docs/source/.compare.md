---
title: API Reference

language_tabs:
- javascript

includes:

search: true

toc_footers:
- <a href='http://github.com/mpociot/documentarian'>Documentation Powered by Documentarian</a>
---
<!-- START_INFO -->
# Info

Welcome to the generated API reference.
[Get Postman Collection](http://api.exam.test/docs/collection.json)

<!-- END_INFO -->

#


<!-- START_8038eb1d798c3081e1c1e3df9a14e306 -->
## api/admin/question_levels
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/question_levels"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id": 1,
            "name": "容易",
            "desc": "简单知识点，背诵即可以",
            "total_num": 0,
            "created_at": "2020-05-17 14:42:26",
            "updated_at": null
        },
        {
            "id": 2,
            "name": "适中",
            "desc": "通过经过几次练习，才能掌握解答步骤和方法",
            "total_num": 0,
            "created_at": "2020-05-17 14:42:26",
            "updated_at": null
        },
        {
            "id": 3,
            "name": "困难",
            "desc": "需要结合实际上下文来选择，理论练习实际",
            "total_num": 0,
            "created_at": "2020-05-17 14:42:26",
            "updated_at": null
        }
    ],
    "links": {
        "first": "http:\/\/localhost\/api\/admin\/question_levels?page=1",
        "last": "http:\/\/localhost\/api\/admin\/question_levels?page=1",
        "prev": null,
        "next": null
    },
    "meta": {
        "current_page": 1,
        "from": 1,
        "last_page": 1,
        "path": "http:\/\/localhost\/api\/admin\/question_levels",
        "per_page": 10,
        "to": 3,
        "total": 3
    }
}
```

### HTTP Request
`GET api/admin/question_levels`


<!-- END_8038eb1d798c3081e1c1e3df9a14e306 -->

<!-- START_9bc4d3d7ae92b6708fc4e03e5afd9970 -->
## api/admin/question_levels
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/question_levels"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/question_levels`


<!-- END_9bc4d3d7ae92b6708fc4e03e5afd9970 -->

<!-- START_75c096e7e3e467e6de50eccf7446ee8d -->
## api/admin/question_levels/{question_level}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/question_levels/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": {
        "id": 1,
        "name": "容易",
        "desc": "简单知识点，背诵即可以",
        "total_num": 0,
        "created_at": "2020-05-17 14:42:26",
        "updated_at": null
    }
}
```

### HTTP Request
`GET api/admin/question_levels/{question_level}`


<!-- END_75c096e7e3e467e6de50eccf7446ee8d -->

<!-- START_dc8270831a8852f595ca05896d84f20f -->
## api/admin/question_levels/{question_level}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/question_levels/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`PUT api/admin/question_levels/{question_level}`

`PATCH api/admin/question_levels/{question_level}`


<!-- END_dc8270831a8852f595ca05896d84f20f -->

<!-- START_03c88c2b0debc40bcfdf1ac4d4629667 -->
## api/admin/question_levels/{question_level}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/question_levels/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`DELETE api/admin/question_levels/{question_level}`


<!-- END_03c88c2b0debc40bcfdf1ac4d4629667 -->

<!-- START_6fefd4c18fc24dfaf62772ae441f27b9 -->
## api/admin/question_types
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/question_types"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id": 1,
            "name": "单选题",
            "desc": "单选,四选一",
            "total_num": 0,
            "created_at": "2020-05-17 14:42:26",
            "updated_at": null
        },
        {
            "id": 2,
            "name": "多选题",
            "desc": "多选，四选多",
            "total_num": 0,
            "created_at": "2020-05-17 14:42:26",
            "updated_at": null
        },
        {
            "id": 3,
            "name": "判断题",
            "desc": "判断题,正误",
            "total_num": 0,
            "created_at": "2020-05-17 14:42:26",
            "updated_at": null
        }
    ],
    "links": {
        "first": "http:\/\/localhost\/api\/admin\/question_types?page=1",
        "last": "http:\/\/localhost\/api\/admin\/question_types?page=1",
        "prev": null,
        "next": null
    },
    "meta": {
        "current_page": 1,
        "from": 1,
        "last_page": 1,
        "path": "http:\/\/localhost\/api\/admin\/question_types",
        "per_page": 10,
        "to": 3,
        "total": 3
    }
}
```

### HTTP Request
`GET api/admin/question_types`


<!-- END_6fefd4c18fc24dfaf62772ae441f27b9 -->

<!-- START_2fb8c6206d470b4996d1804c2f1c57c8 -->
## api/admin/question_types
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/question_types"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/question_types`


<!-- END_2fb8c6206d470b4996d1804c2f1c57c8 -->

<!-- START_14445f1fd9e4e5a3fd55e5f6ca71a63f -->
## api/admin/question_types/{question_type}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/question_types/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": {
        "id": 1,
        "name": "单选题",
        "desc": "单选,四选一",
        "total_num": 0,
        "created_at": "2020-05-17 14:42:26",
        "updated_at": null
    }
}
```

### HTTP Request
`GET api/admin/question_types/{question_type}`


<!-- END_14445f1fd9e4e5a3fd55e5f6ca71a63f -->

<!-- START_4f73320798e1f665f7c5a75fac44350f -->
## api/admin/question_types/{question_type}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/question_types/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`PUT api/admin/question_types/{question_type}`

`PATCH api/admin/question_types/{question_type}`


<!-- END_4f73320798e1f665f7c5a75fac44350f -->

<!-- START_31ab42a6e4df2a9e55b3ccf783db2116 -->
## api/admin/question_types/{question_type}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/question_types/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`DELETE api/admin/question_types/{question_type}`


<!-- END_31ab42a6e4df2a9e55b3ccf783db2116 -->

<!-- START_adf567ffc69efed25d0e80defda0b548 -->
## api/admin/questions
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/questions"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id": 50,
            "question": "Possimus quia expedita laudantium id placeat. Laborum totam accusantium vitae eos incidunt pariatur et.",
            "type_id": 2,
            "level_id": 3,
            "a": "I can do no more.",
            "b": "Queen was silent.",
            "c": "There's no.",
            "d": "Caterpillar. Here.",
            "correct": [
                "a",
                "d"
            ],
            "created_at": "2020-05-17 14:42:27",
            "updated_at": "2020-05-17 14:42:27"
        },
        {
            "id": 49,
            "question": "Est officia maiores in quam quaerat fuga quasi iusto. Minus autem iusto architecto id.",
            "type_id": 2,
            "level_id": 2,
            "a": "Alice, a little.",
            "b": "Queen of Hearts.",
            "c": "Alice, quite.",
            "d": "Cat. 'I don't.",
            "correct": [
                "b",
                "b"
            ],
            "created_at": "2020-05-17 14:42:27",
            "updated_at": "2020-05-17 14:42:27"
        },
        {
            "id": 48,
            "question": "Quam quo quisquam consequuntur.",
            "type_id": 2,
            "level_id": 3,
            "a": "WOULD put their.",
            "b": "WHAT?' thought.",
            "c": "Bill, I.",
            "d": "YET,' she said to.",
            "correct": [
                "b",
                "a"
            ],
            "created_at": "2020-05-17 14:42:27",
            "updated_at": "2020-05-17 14:42:27"
        },
        {
            "id": 47,
            "question": "Sit perspiciatis autem quam fuga fugiat est maxime.",
            "type_id": 1,
            "level_id": 3,
            "a": "WOULD not remember.",
            "b": "I'm afraid, but.",
            "c": "Mock Turtle.",
            "d": "Alice. 'That's the.",
            "correct": [
                "a"
            ],
            "created_at": "2020-05-17 14:42:27",
            "updated_at": "2020-05-17 14:42:27"
        },
        {
            "id": 46,
            "question": "Ut illo soluta aut id accusantium eveniet. Quia eum aspernatur sed culpa accusantium impedit.",
            "type_id": 2,
            "level_id": 1,
            "a": "I beg your.",
            "b": "However.",
            "c": "Queen shrieked.",
            "d": "Seven flung down.",
            "correct": [
                "b",
                "d"
            ],
            "created_at": "2020-05-17 14:42:27",
            "updated_at": "2020-05-17 14:42:27"
        },
        {
            "id": 45,
            "question": "Deserunt beatae consectetur rerum eos ducimus modi cumque. Consequuntur ut vel non doloribus cumque non.",
            "type_id": 1,
            "level_id": 1,
            "a": "King, 'that only.",
            "b": "Queen jumped up in.",
            "c": "Mock Turtle. 'She.",
            "d": "Alice caught the.",
            "correct": [
                "c"
            ],
            "created_at": "2020-05-17 14:42:27",
            "updated_at": "2020-05-17 14:42:27"
        },
        {
            "id": 44,
            "question": "Hic enim facilis esse enim qui sunt laboriosam.",
            "type_id": 2,
            "level_id": 3,
            "a": "Queen say only.",
            "b": "The jury all.",
            "c": "GAVE HER ONE, THEY.",
            "d": "AND.",
            "correct": [
                "c",
                "b"
            ],
            "created_at": "2020-05-17 14:42:27",
            "updated_at": "2020-05-17 14:42:27"
        },
        {
            "id": 43,
            "question": "Animi odio architecto dolores deleniti.",
            "type_id": 2,
            "level_id": 3,
            "a": "In another moment.",
            "b": "I'll manage better.",
            "c": "Gryphon. 'Then.",
            "d": "Imagine her.",
            "correct": [
                "a",
                "c"
            ],
            "created_at": "2020-05-17 14:42:27",
            "updated_at": "2020-05-17 14:42:27"
        },
        {
            "id": 42,
            "question": "Vitae et maiores reiciendis. Vitae ipsa tempora itaque et non labore doloremque.",
            "type_id": 2,
            "level_id": 1,
            "a": "How brave they'll.",
            "b": "Soup, so rich and.",
            "c": "Mock Turtle in the.",
            "d": "I think I could.",
            "correct": [
                "b",
                "b"
            ],
            "created_at": "2020-05-17 14:42:27",
            "updated_at": "2020-05-17 14:42:27"
        },
        {
            "id": 41,
            "question": "Dolores quidem nobis quaerat sunt laudantium temporibus. Rerum occaecati est dolorem omnis nesciunt.",
            "type_id": 3,
            "level_id": 1,
            "a": "Alice thought she.",
            "b": "Queen, 'and take.",
            "c": "When she got used.",
            "d": "Alice said.",
            "correct": [
                "b"
            ],
            "created_at": "2020-05-17 14:42:27",
            "updated_at": "2020-05-17 14:42:27"
        }
    ],
    "links": {
        "first": "http:\/\/localhost\/api\/admin\/questions?page=1",
        "last": "http:\/\/localhost\/api\/admin\/questions?page=5",
        "prev": null,
        "next": "http:\/\/localhost\/api\/admin\/questions?page=2"
    },
    "meta": {
        "current_page": 1,
        "from": 1,
        "last_page": 5,
        "path": "http:\/\/localhost\/api\/admin\/questions",
        "per_page": 10,
        "to": 10,
        "total": 50
    }
}
```

### HTTP Request
`GET api/admin/questions`


<!-- END_adf567ffc69efed25d0e80defda0b548 -->

<!-- START_e9585216bf897477855070f15ce1dcd6 -->
## api/admin/questions
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/questions"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/questions`


<!-- END_e9585216bf897477855070f15ce1dcd6 -->

<!-- START_63505f9ae140f2efdecb2eee0e95d8a3 -->
## api/admin/questions/{question}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/questions/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": {
        "id": 1,
        "question": "Facilis quam consectetur quia dolores repellendus magni aut. Voluptatum nemo quam explicabo.",
        "type_id": 1,
        "level_id": 3,
        "a": "Alice had learnt.",
        "b": "Alice quite hungry.",
        "c": "I'll be jury,\".",
        "d": "Dodo managed it.).",
        "correct": [
            "d"
        ],
        "created_at": "2020-05-17 14:42:26",
        "updated_at": "2020-05-17 14:42:26"
    }
}
```

### HTTP Request
`GET api/admin/questions/{question}`


<!-- END_63505f9ae140f2efdecb2eee0e95d8a3 -->

<!-- START_3ab092e40923841a3a08c08cd4779691 -->
## api/admin/questions/{question}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/questions/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`PUT api/admin/questions/{question}`

`PATCH api/admin/questions/{question}`


<!-- END_3ab092e40923841a3a08c08cd4779691 -->

<!-- START_178f3e63fc0f008f7a53a3bd12abc8ef -->
## api/admin/questions/{question}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/questions/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`DELETE api/admin/questions/{question}`


<!-- END_178f3e63fc0f008f7a53a3bd12abc8ef -->

<!-- START_270ff2e96890b21c9ec691c543923d57 -->
## api/admin/tests
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/tests"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [],
    "links": {
        "first": "http:\/\/localhost\/api\/admin\/tests?page=1",
        "last": "http:\/\/localhost\/api\/admin\/tests?page=1",
        "prev": null,
        "next": null
    },
    "meta": {
        "current_page": 1,
        "from": null,
        "last_page": 1,
        "path": "http:\/\/localhost\/api\/admin\/tests",
        "per_page": 10,
        "to": null,
        "total": 0
    }
}
```

### HTTP Request
`GET api/admin/tests`


<!-- END_270ff2e96890b21c9ec691c543923d57 -->

<!-- START_7082195f0234c8d3f63d8f2987bbbdf7 -->
## api/admin/tests
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/tests"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/tests`


<!-- END_7082195f0234c8d3f63d8f2987bbbdf7 -->

<!-- START_6d444f735fb27317d129ad1006fa1bc7 -->
## api/admin/tests/{test}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/tests/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (500):

```json
{
    "message": "Server Error"
}
```

### HTTP Request
`GET api/admin/tests/{test}`


<!-- END_6d444f735fb27317d129ad1006fa1bc7 -->

<!-- START_6c35848f5885e1772c8e52e408bb3ca0 -->
## api/admin/tests/{test}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/tests/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`PUT api/admin/tests/{test}`

`PATCH api/admin/tests/{test}`


<!-- END_6c35848f5885e1772c8e52e408bb3ca0 -->

<!-- START_eb4c16349df14789ebe6fd9d90143381 -->
## api/admin/tests/{test}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/tests/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`DELETE api/admin/tests/{test}`


<!-- END_eb4c16349df14789ebe6fd9d90143381 -->

<!-- START_4bbe075cfccfda044e08f2cb05c9dc34 -->
## api/auth/tests/list
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/auth/tests/list"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [],
    "links": {
        "first": "http:\/\/localhost\/api\/auth\/tests\/list?page=1",
        "last": "http:\/\/localhost\/api\/auth\/tests\/list?page=1",
        "prev": null,
        "next": null
    },
    "meta": {
        "current_page": 1,
        "from": null,
        "last_page": 1,
        "path": "http:\/\/localhost\/api\/auth\/tests\/list",
        "per_page": 10,
        "to": null,
        "total": 0
    }
}
```

### HTTP Request
`GET api/auth/tests/list`


<!-- END_4bbe075cfccfda044e08f2cb05c9dc34 -->

<!-- START_2d65e78fc44ff807105d0e9bd9f4915e -->
## api/auth/test_shows/create/{id}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/auth/test_shows/create/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/auth/test_shows/create/{id}`


<!-- END_2d65e78fc44ff807105d0e9bd9f4915e -->

<!-- START_57ff163754455f06e717afb4ba490057 -->
## api/auth/test_shows
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/auth/test_shows"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [],
    "links": {
        "first": "http:\/\/localhost\/api\/auth\/test_shows?page=1",
        "last": "http:\/\/localhost\/api\/auth\/test_shows?page=1",
        "prev": null,
        "next": null
    },
    "meta": {
        "current_page": 1,
        "from": null,
        "last_page": 1,
        "path": "http:\/\/localhost\/api\/auth\/test_shows",
        "per_page": 10,
        "to": null,
        "total": 0
    }
}
```

### HTTP Request
`GET api/auth/test_shows`


<!-- END_57ff163754455f06e717afb4ba490057 -->

<!-- START_6b2f684fd193a1b5df2b18ed4d1748b6 -->
## api/auth/test_shows
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/auth/test_shows"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/auth/test_shows`


<!-- END_6b2f684fd193a1b5df2b18ed4d1748b6 -->

<!-- START_1d51b25370d0f5b2d2c351f770150446 -->
## api/auth/test_shows/{test_show}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/auth/test_shows/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (500):

```json
{
    "message": "Server Error"
}
```

### HTTP Request
`GET api/auth/test_shows/{test_show}`


<!-- END_1d51b25370d0f5b2d2c351f770150446 -->

<!-- START_9607dfa38b66b0c78ff8e1873b6aaa32 -->
## api/auth/test_shows/{test_show}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/auth/test_shows/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`PUT api/auth/test_shows/{test_show}`

`PATCH api/auth/test_shows/{test_show}`


<!-- END_9607dfa38b66b0c78ff8e1873b6aaa32 -->

<!-- START_e5de662c0e176a9f41daaca73dadc2ec -->
## api/auth/test_shows/{test_show}
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/auth/test_shows/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`DELETE api/auth/test_shows/{test_show}`


<!-- END_e5de662c0e176a9f41daaca73dadc2ec -->

#会员登陆管理

   微信端会员登陆、令牌刷新和退出
<!-- START_a925a8d22b3615f12fca79456d286859 -->
## 会员登陆

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/auth/login"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "email": "871228582@qq.com",
    "password": "123456"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/auth/login`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `email` | string |  required  | 登陆名
        `password` | string |  required  | 会员密码
    
<!-- END_a925a8d22b3615f12fca79456d286859 -->

<!-- START_19ff1b6f8ce19d3c444e9b518e8f7160 -->
## 会员退出

<br><small style="padding: 1px 9px 2px;font-weight: bold;white-space: nowrap;color: #ffffff;-webkit-border-radius: 9px;-moz-border-radius: 9px;border-radius: 9px;background-color: #3a87ad;">Requires authentication</small>
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/auth/logout"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/auth/logout`


<!-- END_19ff1b6f8ce19d3c444e9b518e8f7160 -->

<!-- START_994af8f47e3039ba6d6d67c09dd9e415 -->
## 会员令牌刷新

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/auth/refresh"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/auth/refresh`


<!-- END_994af8f47e3039ba6d6d67c09dd9e415 -->

<!-- START_a47210337df3b4ba0df697c115ba0c1e -->
## 获取会员信息

<br><small style="padding: 1px 9px 2px;font-weight: bold;white-space: nowrap;color: #ffffff;-webkit-border-radius: 9px;-moz-border-radius: 9px;border-radius: 9px;background-color: #3a87ad;">Requires authentication</small>
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/auth/me"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/auth/me`


<!-- END_a47210337df3b4ba0df697c115ba0c1e -->

#会员管理


<!-- START_d3d5a0cdf4845ad0bd740ea8fbe3345c -->
## 导入会员

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/members/import"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/members/import`


<!-- END_d3d5a0cdf4845ad0bd740ea8fbe3345c -->

<!-- START_349faeaf6e42d4b5f085f8e0fd48f352 -->
## 会员列表

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/members"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [],
    "status": "success",
    "status_code": 200,
    "links": {
        "first": "http:\/\/localhost\/api\/admin\/members?page=1",
        "last": "http:\/\/localhost\/api\/admin\/members?page=1",
        "prev": null,
        "next": null
    },
    "meta": {
        "current_page": 1,
        "from": null,
        "last_page": 1,
        "path": "http:\/\/localhost\/api\/admin\/members",
        "per_page": 10,
        "to": null,
        "total": 0
    }
}
```

### HTTP Request
`GET api/admin/members`


<!-- END_349faeaf6e42d4b5f085f8e0fd48f352 -->

<!-- START_88a4185f7337592338f5b184869be8d4 -->
## 添加会员

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/members"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/members`


<!-- END_88a4185f7337592338f5b184869be8d4 -->

<!-- START_2fbed905af592d5d00e0413fffc07f0c -->
## 会员详情

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/members/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (500):

```json
{
    "message": "Server Error"
}
```

### HTTP Request
`GET api/admin/members/{member}`


<!-- END_2fbed905af592d5d00e0413fffc07f0c -->

<!-- START_1bdae1934c0618bb2b3423283d98e510 -->
## 修改会员

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/members/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`PUT api/admin/members/{member}`

`PATCH api/admin/members/{member}`


<!-- END_1bdae1934c0618bb2b3423283d98e510 -->

<!-- START_7b6c983338f91c35580b2d965386875b -->
## 删除会员

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/members/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`DELETE api/admin/members/{member}`


<!-- END_7b6c983338f91c35580b2d965386875b -->

#媒体管理


<!-- START_ea90fc868fa0d52b46af253b44bd21c8 -->
## 文件上传

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/medias"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "file": "accusantium"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/medias`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `file` | required |  optional  | file 上传的文件
    
<!-- END_ea90fc868fa0d52b46af253b44bd21c8 -->

#模块和权限管理


<!-- START_4efff3f9e3b0ce7fdf09e2465838fffc -->
## 显示模块列表

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/modules"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [],
    "status": "success",
    "status_code": 200
}
```

### HTTP Request
`GET api/admin/modules`


<!-- END_4efff3f9e3b0ce7fdf09e2465838fffc -->

<!-- START_b49265c0db787d4925b355ba7c1284b8 -->
## 新增模块信息

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/modules"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "name": "goods",
    "desc": "\u5546\u54c1\u6a21\u5757",
    "permissions": "['index', 'show']"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/modules`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `name` | string |  required  | 模块名称（英文）
        `desc` | string |  optional  | 模块说明（中文）
        `permissions` | array |  required  | 权限列表（数组）
    
<!-- END_b49265c0db787d4925b355ba7c1284b8 -->

<!-- START_fb4ff1cf66653f71571e172506fbff59 -->
## 显示模块详情

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/modules/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (404):

```json
{
    "message": "No query results for model [App\\Models\\Module] 1"
}
```

### HTTP Request
`GET api/admin/modules/{module}`


<!-- END_fb4ff1cf66653f71571e172506fbff59 -->

<!-- START_053b4dc6d659acef792d4e4d7479f8cc -->
## 修改模块信息

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/modules/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "name": "goods",
    "desc": "\u5546\u54c1\u6a21\u5757",
    "permissions": "['index', 'show']"
}

fetch(url, {
    method: "PUT",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`PUT api/admin/modules/{module}`

`PATCH api/admin/modules/{module}`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `name` | string |  required  | 模块名称（英文）
        `desc` | string |  optional  | 模块说明（中文）
        `permissions` | array |  required  | 权限列表（数组）
    
<!-- END_053b4dc6d659acef792d4e4d7479f8cc -->

<!-- START_a1d1f5bfe6c10fb3f2ad2a573561cfb5 -->
## 删除模块信息

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/modules/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`DELETE api/admin/modules/{module}`


<!-- END_a1d1f5bfe6c10fb3f2ad2a573561cfb5 -->

#管理员登陆管理

 管理员登陆、退出、刷新和获取个人信息
<!-- START_e9aa8e9cecac4d07efa45f1b2d470efb -->
## 管理员登陆

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/login"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "username": "admin@qq.com",
    "password": "123456"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/login`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `username` | string |  required  | 用户名,可以是手机号和登陆名
        `password` | string |  required  | 密码
    
<!-- END_e9aa8e9cecac4d07efa45f1b2d470efb -->

<!-- START_66fec5572107b6fc8dc916471afde4c4 -->
## 管理员退出

<br><small style="padding: 1px 9px 2px;font-weight: bold;white-space: nowrap;color: #ffffff;-webkit-border-radius: 9px;-moz-border-radius: 9px;border-radius: 9px;background-color: #3a87ad;">Requires authentication</small>
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/logout"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/logout`


<!-- END_66fec5572107b6fc8dc916471afde4c4 -->

<!-- START_e3f8d4e1bfaaf076905d3063ba09b6ec -->
## 刷新管理员令牌

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/refresh"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/refresh`


<!-- END_e3f8d4e1bfaaf076905d3063ba09b6ec -->

<!-- START_97c9a2ec62401ca2571585925b1f936d -->
## 获取管理员信息

<br><small style="padding: 1px 9px 2px;font-weight: bold;white-space: nowrap;color: #ffffff;-webkit-border-radius: 9px;-moz-border-radius: 9px;border-radius: 9px;background-color: #3a87ad;">Requires authentication</small>
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/me"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/me`


<!-- END_97c9a2ec62401ca2571585925b1f936d -->

#管理员管理


<!-- START_39863cbc5fabf14fb2b8aa4ab82ab43f -->
## api/admin/users/export
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/users/export"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/users/export`


<!-- END_39863cbc5fabf14fb2b8aa4ab82ab43f -->

<!-- START_f0a375d3947dc11abb626962a2c6c651 -->
## api/admin/users/import
> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/users/import"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/users/import`


<!-- END_f0a375d3947dc11abb626962a2c6c651 -->

<!-- START_d50ce4b09fb102cdd72c6ecac6749927 -->
## 修改管理员的个人信息

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/users/modify"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "action": "quos"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/users/modify`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `action` | string |  required  | 动作(update=>指修改个人信息， update-avatr=>指修改头像和个人信息，reset=>修改密码)
    
<!-- END_d50ce4b09fb102cdd72c6ecac6749927 -->

<!-- START_1fdf5c126c9b5b722e5044c3f680bf8e -->
## 管理员列表.

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/users"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id": 1,
            "nickname": "admin",
            "email": "admin",
            "phone": null,
            "avatar": null,
            "status": true,
            "roles": [
                {
                    "id": 1,
                    "admin_id": 1,
                    "admin_nickname": "admin",
                    "role_id": 1,
                    "role_name": "admin",
                    "role_desc": "超级管理员"
                }
            ],
            "permissions": []
        }
    ],
    "status": "success",
    "status_code": 200,
    "links": {
        "first": "http:\/\/localhost\/api\/admin\/users?page=1",
        "last": "http:\/\/localhost\/api\/admin\/users?page=1",
        "prev": null,
        "next": null
    },
    "meta": {
        "current_page": 1,
        "from": 1,
        "last_page": 1,
        "path": "http:\/\/localhost\/api\/admin\/users",
        "per_page": 10,
        "to": 1,
        "total": 1
    }
}
```

### HTTP Request
`GET api/admin/users`


<!-- END_1fdf5c126c9b5b722e5044c3f680bf8e -->

<!-- START_dc2d86108b3ba680c4c4c02f4f766df8 -->
## 新建管理员

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/users"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "email": "deleniti",
    "password": "iure",
    "password_confirmation": "voluptatem",
    "avatar": "iusto",
    "phone": "laboriosam",
    "roles": []
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/users`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `email` | string |  required  | 登陆名
        `password` | string |  required  | 密码
        `password_confirmation` | string |  required  | 确认密码
        `avatar` | string |  optional  | optional 头像
        `phone` | string |  optional  | optional 手机号码
        `roles` | array |  optional  | optional 角色（数组，内容为数字）
    
<!-- END_dc2d86108b3ba680c4c4c02f4f766df8 -->

<!-- START_538c6352521b306dbf554e89cd64ac98 -->
## 管理员详情

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/users/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": {
        "id": 1,
        "nickname": "admin",
        "email": "admin",
        "phone": null,
        "avatar": null,
        "status": true,
        "roles": [
            {
                "id": 1,
                "admin_id": 1,
                "admin_nickname": "admin",
                "role_id": 1,
                "role_name": "admin",
                "role_desc": "超级管理员"
            }
        ],
        "permissions": []
    },
    "status": "success",
    "status_code": 200
}
```

### HTTP Request
`GET api/admin/users/{user}`


<!-- END_538c6352521b306dbf554e89cd64ac98 -->

<!-- START_a7a0cf16fbe0b43360d4ccee6a11c638 -->
## 修改管理员信息

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/users/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "action": "error",
    "nickname": "dolor",
    "avatar": "molestiae",
    "roles": []
}

fetch(url, {
    method: "PUT",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`PUT api/admin/users/{user}`

`PATCH api/admin/users/{user}`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `action` | string |  required  | 需要执行的动作(修改密码，修改个人信息，修改状态)
        `nickname` | string |  optional  | optional 用户昵称
        `avatar` | string |  optional  | optional 用户头像
        `roles` | array |  required  | 用户角色
    
<!-- END_a7a0cf16fbe0b43360d4ccee6a11c638 -->

<!-- START_7d625b15e5b59cfac2c9129fa450c5f5 -->
## 删除管理员

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/users/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`DELETE api/admin/users/{user}`


<!-- END_7d625b15e5b59cfac2c9129fa450c5f5 -->

#角色管理


<!-- START_94570d2438af2b542ef2c41e7c981f14 -->
## 显示角色列表

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/roles"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id": 1,
            "name": "admin",
            "desc": "超级管理员",
            "role_permissions": [],
            "created_at": 1589697746
        },
        {
            "id": 2,
            "name": "user",
            "desc": "普通用户",
            "role_permissions": [],
            "created_at": 1589697746
        }
    ],
    "status": "success",
    "status_code": 200
}
```

### HTTP Request
`GET api/admin/roles`


<!-- END_94570d2438af2b542ef2c41e7c981f14 -->

<!-- START_e3b8f94c6a5e3b882797d5f2ff34d613 -->
## 新增角色

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/roles"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "name": "manger",
    "desc": "\u8fd0\u8425\u8005",
    "permissions": "[{\"module\": \"goods\", \"permissions\":[\"index\", \"show\"]}]"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/roles`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `name` | string |  required  | 角色名称
        `desc` | string |  optional  | optional 角色说明
        `permissions` | Object |  required  | 权限列表
    
<!-- END_e3b8f94c6a5e3b882797d5f2ff34d613 -->

<!-- START_f5ba4005132988d95d7d1b6b23208166 -->
## 显示详情

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/roles/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": {
        "id": 1,
        "name": "admin",
        "desc": "超级管理员",
        "role_permissions": [],
        "created_at": 1589697746
    },
    "status": "success",
    "status_code": 200
}
```

### HTTP Request
`GET api/admin/roles/{role}`


<!-- END_f5ba4005132988d95d7d1b6b23208166 -->

<!-- START_5063544766f7cd42210726ccf7bbc586 -->
## 更新角色

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/roles/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "name": "manger",
    "desc": "\u8fd0\u8425\u8005",
    "permissions": "[{\"module\": \"goods\", \"permissions\":[\"index\", \"show\"]}]"
}

fetch(url, {
    method: "PUT",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`PUT api/admin/roles/{role}`

`PATCH api/admin/roles/{role}`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `name` | string |  required  | 角色名称
        `desc` | string |  optional  | optional 角色说明
        `permissions` | array |  required  | 权限列表
    
<!-- END_5063544766f7cd42210726ccf7bbc586 -->

<!-- START_59825d3aab1262e75c3170598ca9ddfb -->
## 删除角色信息     *

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/roles/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`DELETE api/admin/roles/{role}`


<!-- END_59825d3aab1262e75c3170598ca9ddfb -->

#验证码和短信发送管理


<!-- START_4bb6a74c85a60dcbe5e6fd66a3db2633 -->
## 生成手机验证码

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/sms/send"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "phone": "ullam"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/sms/send`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `phone` | string |  required  | 手机号码
    
<!-- END_4bb6a74c85a60dcbe5e6fd66a3db2633 -->

<!-- START_bb39f68355478ed6827f0c84b131b56e -->
## 校验手机验证码

> Example request:

```javascript
const url = new URL(
    "http://api.exam.test/api/admin/sms/verify"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer {{token}}",
};

let body = {
    "phone": "dolor",
    "code": "et"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/admin/sms/verify`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `phone` | string |  required  | 手机号码
        `code` | string |  required  | 验证码
    
<!-- END_bb39f68355478ed6827f0c84b131b56e -->


