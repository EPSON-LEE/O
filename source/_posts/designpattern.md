---
title: 设计模式
date: 2020-01-01 
tags: [设计模式]
---

/**
 * AMD 规范 Requirejs
 */
// https://juejin.cn/post/6844903759009595405
// 模块十日谈 http://huangxuan.me/js-module-7day/#/8


// IOC 控制反转 Inversion of control

class RTeam {
  constructor(props) {
    super(props)
    this.name = 'Rocket'
  }
  
}

class Player {

  constructor(props) {
    super(props);
    this.team = new Team()
  }
  
  info() {
    console.log(this.team.name)
  }
}

let ym = new Player()
ym.info()


// RequireJS/AMD 的模块加载器

var injector = {

}

// 责任链模式

// 链式调用

const A = function(value) {
  this.value = value
}

A.prototype.add = function(val) {
  this.value += val
  return this
}

A.prototype.sub = function(val) {
  this.value -= val
  return this
}

A.prototype.multiply = function(val) {
  this.value *= val
  return this
}

A.prototype.divide = function(val) {
  this.value /= val
  return this
}

var calculator = new A(1)
// (1 + 2 - 3) * 5
calculator.add(2).sub(3).multiply(5)


class Tools {

  constructor(val) {
    this.value = val
  }

  add(val) {
    this.value += val
    return this
  }

  sub(val) {
    this.value -= val
    return this
  }

  multiply(val) {
    this.value *= val
    return this
  }
}

var num = new Tools(2)
num.add(2).sub(1)