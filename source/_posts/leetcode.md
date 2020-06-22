---
title: leetcode
date: 2020-06-13 10:13:56
tags: [leetcode]
---

算法题一般都是有基本的模板和技巧在里面，按照 leetcode 的 tag 功能，从数据结构的角度分为 数组、链表、队列、二叉树、堆；

从基础运用的角度来看分为、排序、查找；从算法思想来看又可以分为分治、贪心、回溯、递归；其中又会有一些代表性的算法、八皇后、最小子串。

## 链表数组题目：

### 双指针


### 快慢指针

例如：leetcode 19 数组类题目遇到针对某点旋转时 还需使用二分法进行排序

例如：leetcode 35

### 优先队列

例如：leetcode 23

### 分治算法

例如：leetcode 23、21

### 最小堆

例如：leetcode 23

### 分治

分治的要素： 先解决局部 再合成一个整体。

### 回溯

#### 识别回溯

1. 有没有解：Find a path to success
2. 求所有解：Find all paths to success 求所有解的个数 求所有解的具体信息
3. 求最优解：Find the best path to success

```
class Backtracking(object):

    def backtracking(self, input):

        self.res = []

        def dfs(input, temp, [index]):
            # 边界
            if 非法数据：
                return

            # 终止条件
            if len(input) == len(temp)：
                self.res.append(temp[:])
                return

            # for循环
            for i range(len(input)):
                ##1. 修改path
                temp.append(input[i])
                ##2. backtracking
                dfs(input, temp, [index])
                ##3. 退回原来状态，恢复path
                temp.pop()
        # 执行
        dfs(input, [], 0)
        return self.res
```

### 深度搜索与递归的区别

深度搜索经常用递归(recursion)来实现，二者常常同时出现。深度搜索，是逻辑意义上的算法，递归，是一种物理意义上的实现，它和迭代(iteration)是对应的。深度搜索，可以用递归来实现，也可以用栈来实现；而递归，一般总是用来实现深度搜索。可以说，递归一定是深度搜索，深度搜索不一定用递归。

eg:

leetcode 22：给定括号个数，给出所有可能

leetcode 77：给定一个无重复元素的数组 candidates 和一个目标数 target ，找出 candidates 中所有可以使数字和为 target 的组合。

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

全排列

leetcode 21 (merge 2 sorted lists)

leetcode 23 (merge K sorted lists)

leetcode 203

[DFS 、动态规划、回溯法、递归之间的关系是什么？](https://www.zhihu.com/question/266403334/answer/698464437)

[数组排列组合问题——BACKTRACKING](https://www.cnblogs.com/mozi-song/p/9579418.html)

## 二叉树相关：

### 求深度

### 遍历

#### 递归

- 前序

- 中序

- 后序

#### 非递归

### 深度优先

### 广度优先

#### 变种

- 已知中序和后序求前序

### 翻转