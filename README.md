# xide09_jsonserver

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# xide09_jsonserver

출처 : https://sharegpt.com/c/QYMXatH



## JSON Server
https://github.com/typicode/json-server


```npm install -g json-server```
Create a db.json file with some data
```
{
  "posts": [
    { "id": 1, "title": "json-server", "author": "typicode" }
  ],
  "comments": [
    { "id": 1, "body": "some comment", "postId": 1 }
  ],
  "profile": { "name": "typicode" }
}
```
Start JSON Server

```json-server --watch db.json```
Now if you go to http://localhost:3000/posts/1, you'll get

```{ "id": 1, "title": "json-server", "author": "typicode" }```
