---
title: JavaScript 内存与内存优化
date: 2020-01-01 20:34:38
tags:
---

性能检查 -> 代码层面优化 -> 弱引用
        ｜               ^
        ｜               ｜
        ｜               ｜
        ｜               ｜
         -------> javascript 对象可达性


## 垃圾收集

JavaScript具有自动垃圾收集机制。也就是说开发人员无需关心内存使用问题，执行环境会负责管理代码执行过程中使用的内存，找出不再继续使用的变量，然后释放其占用的内存。

我们创建的原始值、函数、对象等都会占用内存，内存的管理是自动的，无形的。在JavaScript中，内存管理最主要的概念是可达性。

他通常有两种方式：
1、标记清除
2、引用记数

## 可达性

## WeakMap 和 WeakSet

### WeakMap 

WeakMap.set
WeakMap.get
WeakMap.has
WeakMap.delete

1. 额外的数据

2. 缓存

```
const cache = new WeakMap()

const process = (obj) => {

    if (!cache.has(obj)) {
        cache.set(obj, obj)
    }

    return cache.get(obj)
}

let obj1 = {

}
```

使用 Map 方法：

```
let john = {
    name: "john"
}

let map = new Map()

map.set(john, "...")

john = null

map.get('john')
// ...
```

共存亡，使用 WeakMap 方法

```
let john = {
    name: "john"
}

let weakmap = new WeakMap()
```
## 可迭代协议和迭代器协议

## 例子

一个不是自己维护的数据源：

```
const message  = [
    {
        id: 1,
        name: 'leejiahao',
        age: 25
    },
    {
        id: 2,
        name: Bob,
        age: 23
    },
    {
        id: 3,
        name: Steven,
        age: 22 
    }

]


```

[1. 通过JavaScript垃圾回收机制来理解WeakSet/WeakMap中对象的弱引用](https://www.jianshu.com/p/c99dd69a8f2c)

[2. WeakMap and WeakSet](https://zh.javascript.info/weakmap-weakset)

[3. 使用 chrome-devtools Memory 面板](https://zhuanlan.zhihu.com/p/80792297)

[4. Memory leak patterns in JavaScript](https://www.ibm.com/developerworks/web/library/wa-memleak/wa-memleak-pdf.pdf)

[5. Fixing memory leaks in web applications](https://nolanlawson.com/2020/02/19/fixing-memory-leaks-in-web-applications/)

[6.理解 WeakMap 的 weak](https://juejin.cn/post/6844904160085671949)

