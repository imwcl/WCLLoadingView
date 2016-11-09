[TOC]
# WCLLoadingView
<img src="https://camo.githubusercontent.com/a6eec93a26efa4b006ccddafcc132871e6a8a514/687474703a2f2f696d672e626c6f672e6373646e2e6e65742f3230313630393038313632333236353330" width=200 />

##简介：
WCLLoadingView，loading动画，供大家学习交流使用，已封装好也可以用到项目里面当loading动画

| demo信息    | 详情                      |
|:-----------:|:--------------------------|
| DemoName    | WCLLoadingView            |
| author      | [WCL](https://github.com/631106979) |
| authorMail  | wangchonhlei93@icloud.com |
| 博客d讲解地址    | http://blog.csdn.net/wang631106979/article/details/52473985 |

## 使用：

```swift
//使用默认颜色
WCLLoadingView.init(frame: CGRect.zero)
//根据线条的颜色初始化
let colorArr = [UIColor.init(rgba: "#9DD4E9") , UIColor.init(rgba: "#F5BD58"),  UIColor.init(rgba: "#FF317E") , UIColor.init(rgba: "#6FC9B5")]
WCLLoadingView.init(fram: CGRect.zero, colors: colorArr)
```

### 属性列表

```swift
//动画的总时间，修改这个来改变动画的速度
var duration:Double    = 2
//动画的间隔时间，循环动画的间隔时间
var interval:Double    = 1
//动画的状态
private(set) var status:AnimationStatus = .normal
enum AnimationStatus {
//普通状态
case normal
//动画中
case animating
//暂停
case pause
}

//MARK: Public Methods
/**
开始动画
*/
func startAnimation()

/**
暂停动画
*/
func pauseAnimation()}

/**
继续动画
*/
func resumeAnimation()
```

