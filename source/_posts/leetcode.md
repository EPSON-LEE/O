---
title: leetcode
date: 2020-06-13 10:13:56
tags: [leetcode]
---

算法题一般都是有基本的模板和技巧在里面，按照 leetcode 的 tag 功能，从数据结构的角度分为 数组、链表、队列、二叉树、堆；

从基础运用的角度来看分为、排序、查找；从算法思想来看又可以分为分治、贪心、回溯、递归；其中又会有一些代表性的算法、八皇后、最小子串。

## 链表数组题目：

- 双指针

- 快慢指针

例如：leetcode 19

- 数组类题目遇到针对某点旋转时 还需使用二分法进行排序

例如：leetcode 35

- 优先队列

例如：leetcode 23

- 分治算法

例如：leetcode 23、21

- 最小堆

例如：leetcode 23

- 分治

分治的要素： 先解决局部 再合成一个整体。

- 回溯法

leetcode 22：给定括号个数，给出所有可能

```
function generateParenthesis(n) {
  const res = [];

  function go(l, r, s) {  // l: left remaining, r: right remaining
    if (l > r) return;  // The number of '(' should be always >= ')'

    if (l === 0 && r === 0) {
      res.push(s);
      return;
    }

    if (l > 0) go(l - 1, r, s + '(');
    if (r > 0) go(l, r - 1, s + ')');
  }

  go(n, n, '');
  return res;
}
```

例如:

21 (merge 2 sorted lists)
23 (merge K sorted lists)

- 涉及到递归

leetcode 203

[DFS 、动态规划、回溯法、递归之间的关系是什么？](https://www.zhihu.com/question/266403334/answer/698464437)

[数组排列组合问题——BACKTRACKING](https://www.cnblogs.com/mozi-song/p/9579418.html)