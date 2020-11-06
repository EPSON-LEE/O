---
title: 移动端开发中的视口
date: 2020-10-22 11:30:22
tags: [CSS]
---

## 什么是视口

视口(viewport)代表当前可见的计算机图形区域。在 Web 浏览器术语中，通常与浏览器窗口相同，但不包括浏览器的 UI， 菜单栏等——即指你正在浏览的文档的那一部分。

- 在尺寸较大的设备中，在这些设备上，应用显示区域不一定是全屏的，viewport 是浏览器窗口的大小。
- 在大多数移动设备中，浏览器是全屏的，viewport 是整个屏幕的大小。
- 在全屏模式下，viewport 是设备屏幕的范围，窗口是浏览器窗口，浏览器窗口大小小于或等于视口的大小，并且文档是这个网站，文档的大小可比 viewport 长或宽。

概括地说，viewport 基本上是当前文档的可见部分。

使用 js 获取 视口的宽高：

```js

document.docuemntElement.clientWidth     // 视口宽度
document.docuemntElement.clientHeight    // 视口高度
```

### 布局视口 (layout viewport)

innerHeight 和 innerWidth 所组成的区域通常被认为是布局视口(layout viewport) 。浏览器的框架不被认为是 viewport 的一部分.

### 视觉视口

## 移动设备的视口

参考文档：

1. [MDN:视口概念](https://developer.mozilla.org/zh-CN/docs/Web/CSS/Viewport_concepts)
2. [JavaScript中的各种宽高属性](https://segmentfault.com/a/1190000007515034)
3. [Use `rem` for Global Sizing; Use `em` for Local Sizing](https://css-tricks.com/rem-global-em-local/)
3. [利用视口单位实现适配布局](https://aotu.io/notes/2017/04/28/2017-4-28-CSS-viewport-units/index.html)

4. [viewports 解析](https://www.w3cplus.com/css/viewports.html)
5. [flexible 深度解读](https://juejin.im/post/6844903937242300423)
6. [再聊移动端页面的适配----- vw vh](https://www.w3cplus.com/css/vw-for-layout.html)
7. [再谈 Retina 下 1px 的解决方案](https://www.w3cplus.com/css/fix-1px-for-retina.html)
8. [PostCSS-modules: 让CSS变得更强大](https://www.w3cplus.com/css/postcss-modules-make-css-great-again.html)