<p align="center">
  <h1 align="center">✨<a href="https://inputtip.abgox.com/">InputTip</a>✨</h1>
</p>

<p align="center">
    <a href="https://github.com/abgox/InputTip">Github</a> |
    <a href="https://gitee.com/abgox/InputTip">Gitee</a>
</p>

<p align="center">
    <a href="https://github.com/abgox/InputTip/blob/main/LICENSE">
        <img src="https://img.shields.io/github/license/abgox/InputTip" alt="license" />
    </a>
    <a href="https://github.com/abgox/InputTip">
        <img src="https://img.shields.io/github/v/release/abgox/InputTip?label=version" alt="version" />
    </a>
    <a href="https://img.shields.io/github/languages/code-size/abgox/InputTip.svg">
        <img src="https://img.shields.io/github/languages/code-size/abgox/InputTip.svg" alt="code size" />
    </a>
    <a href="https://img.shields.io/github/repo-size/abgox/InputTip.svg">
        <img src="https://img.shields.io/github/repo-size/abgox/InputTip.svg" alt="repo size" />
    </a>
    <a href="https://github.com/abgox/InputTip">
        <img src="https://img.shields.io/badge/created-2023--5--12-blue" alt="created" />
    </a>
</p>

---

> [!Tip]
>
> - InputTip 使用 [AutoHotkey(AHK)](https://github.com/AutoHotkey/AutoHotkey) 语言编写
>   - [InputTip 可能被错误判断为病毒程序或游戏外挂](https://inputtip.abgox.com/FAQ/about-virus)
> - InputTip 只适用于 **Windows** 系统(**Win10** 以上可用，以下未知)
> - `托盘菜单` 指的是在底部任务栏右边的 InputTip 软件托盘菜单
> - 在 README、[官网](https://inputtip.abgox.com)、[常见问题(FAQ)](https://inputtip.abgox.com/FAQ/) 等帮助文档中提及的 `托盘菜单` 指的都是通过鼠标右键点击 `托盘菜单`

### 介绍

- 一个实时的输入法状态提示工具

  - 根据输入法状态同步修改鼠标样式
    - [自定义鼠标样式](#自定义鼠标样式)
    - 默认使用 [多彩水滴 Oreo 光标](https://zhutix.com/ico/oreo-cu)
      - 默认中文状态为 **红色**，英文状态为 **蓝色**，大写锁定为 **绿色**
      - 在 [更多已适配的鼠标样式](https://inputtip.abgox.com/download/extra) 中有提供它们的左手镜像版本
  - 根据输入法状态在输入光标附近显示不同的 [符号](#关于符号)
    - 默认使用 [白名单机制](https://inputtip.abgox.com/FAQ/white-list/)
  - 切换不同应用窗口时，自动切换到指定的输入法状态
  - 指定按键强制切换输入法状态
  - 详细便捷的配置菜单
    - 所有的配置变动，都只应该在 `托盘菜单` 中进行

[**如果 `InputTip` 对你有所帮助，请考虑给它一个 Star ⭐**](#stars)

### 新的变化

- 请查阅 [更新日志](./src/CHANGELOG.md)

### 常见问题

- 如果有使用问题，请先确认当前使用的 `InputTip` 是最新版本 <img style="display:inline;vertical-align: text-bottom;" src="https://img.shields.io/github/v/release/abgox/InputTip?label=%20" alt="version">
  - 在 `托盘菜单` => `关于` 中查看当前版本号
  - 如果不是最新版本，你应该先更新到最新版本，检查问题是否仍然存在
- 然后查看相关的文档
  - 本页面中包含的内容
  - [常见问题(FAQ)](https://inputtip.abgox.com/FAQ/)
  - [输入法和应用窗口兼容情况](#兼容情况)
  - [issues](https://github.com/abgox/InputTip/issues)
  - ...
- 如果仍有问题，可以前往 [QQ 反馈交流群(451860327)](http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=ZfHFP_gIMyY6kZvqRmJhrsMlvnLDjLf6&authKey=lXo50SvLgudu%2BettInNZdb2OXGjs%2BxsoqsKIB88Vcq%2FjMb9uEW5thwU5Nm85KNX4&noverify=0&group_code=451860327) 或 [腾讯频道](https://pd.qq.com/s/gyers18g6?businessType=5) 交流反馈

### 演示

![demo](https://inputtip.abgox.com/releases/v2/demo.gif)

### 安装

> [!Tip]
>
> - [关于 zip 与 exe 版本的区别以及相关说明](https://inputtip.abgox.com/FAQ/zip-vs-exe)
> - 配置文件所在位置
>   - zip 版本: 解压后的 `src` 目录下的 `InputTip.ini`
>   - exe 版本: `InputTip.exe` 同级目录下的 `InputTip.ini`

- zip 版本

  - 下载仓库的最新代码压缩包 `InputTip-main.zip`
  - 在仓库的 Releases 中下载 `InputTip.zip`
  - [前往官网下载 InputTip.zip](https://inputtip.abgox.com/download)

- exe 版本

  - 在仓库的 Releases 中下载 `InputTip.exe`

  - 使用 [WinGet](https://learn.microsoft.com/windows/package-manager/winget/) 安装

    ```shell
    winget install abgox.InputTip
    ```

  - 使用 [Scoop](https://scoop.sh/) 安装

    ```shell
    scoop install https://inputtip.abgox.com/installer/scoop/InputTip.json
    ```

### 使用

1. 完成 [安装](#安装) 后，运行对应文件即可

   - zip 版本: 运行解压后的目录下的 `InputTip.bat`
   - exe 版本: 运行 `InputTip.exe`

2. 设置开机自启动: `托盘菜单` => `开机自启动`

   - 建议使用 `任务计划程序` 或 `注册表`
   - `应用快捷方式` 可能会无效，详情请查看 [关于开机自启动](https://inputtip.abgox.com/FAQ/startup)

3. 设置 `所有配置菜单的字体大小`

   - 你可以设置字体大小来解决屏幕过小导致菜单显示不完全或屏幕过大导致菜单显示过小的问题
   - `更改配置` => `其他杂项` => `所有配置菜单的字体大小`

4. [设置鼠标样式](https://inputtip.abgox.com/FAQ/cursor-style)

   - `托盘菜单` => `更改配置` => `鼠标样式`，在下拉列表中选择鼠标样式文件夹路径
   - 比如默认的中文鼠标样式文件夹路径: `InputTipCursor\default\CN`
   - [更多已适配的鼠标样式](https://inputtip.abgox.com/download/extra)
   - [自定义鼠标样式](#自定义鼠标样式)

5. 更多相关配置在 `托盘菜单` 中查看

6. [关于更新检查](https://inputtip.abgox.com/FAQ/check-update)、[自定义托盘菜单图标](https://inputtip.abgox.com/FAQ/custom-tray-menu-icon)、[白名单机制](https://inputtip.abgox.com/FAQ/white-list)、[运行项目源代码](https://inputtip.abgox.com/FAQ/run-source-code)、...

<details>
<summary>一个通过方块符号实现的有趣的配置</summary>
<img style="width: 70%;" src="https://inputtip.abgox.com/releases/v2/config-demo.png" />
<img style="width: 70%;" src="https://inputtip.abgox.com/releases/v2/config-demo.gif" />
</details>

### 编译

> [!Tip]
> 你可以自行查看源代码并编译 `InputTip`

> [!Warning]
>
> 如果修改了项目代码，需要先编译 `InputTip.JAB.JetBrains.ahk`，再编译 `InputTip.ahk`

1. 克隆项目仓库到本地

   - 完成项目克隆后，你也可以直接运行目录下的 `InputTip.bat` 来使用 `InputTip`
   - [Github](https://github.com/abgox/InputTip)

     ```shell
     git clone --depth 1 https://github.com/abgox/InputTip.git
     ```

   - [Gitee](https://gitee.com/abgox/InputTip)

     ```shell
     git clone --depth 1 https://gitee.com/abgox/InputTip.git
     ```

2. 安装 [AutoHotkey v2](https://www.autohotkey.com/)
3. 打开 `AutoHotKey Dash`
4. 点击左边的 `Compile`，等待编译器下载完成
5. 重新点击左边的 `Compile`
6. 将 `src\InputTip.ahk` 拖入弹出的编译窗口中
7. 点击左下角的 `Convert` 完成编译
   - 注意: [编译后的 InputTip.exe 文件可能会被误判为病毒程序](https://inputtip.abgox.com/FAQ/about-virus)，请自行处理
8. 运行编译后的 `InputTip.exe`

### 卸载

- 所有相关的文件或目录

  - zip 版本

    - 解压后的整个 `InputTip-main` 目录
      - 鼠标样式文件夹 `src\InputTipCursor`
      - 图片符号文件夹 `src\InputTipSymbol`
      - 配置文件 `src\InputTip.ini`

  - exe 版本
    - 软件本体 `InputTip.exe`
    - 鼠标样式文件夹 `InputTipCursor`
    - 图片符号文件夹 `InputTipSymbol`
    - 配置文件 `InputTip.ini`

---

1. 取消 `开机自启动`: `托盘菜单` => `设置` => `开机自启动`
2. 退出: `托盘菜单` => `退出`
   - 如果修改了鼠标样式，可以通过 `更改配置` => `显示形式` => `1. 要不要修改鼠标样式` 设置为 `【否】`，会尝试进行恢复
   - 如果未完全恢复，请根据弹窗提示信息进行操作
3. 删除以上所有文件或目录

### 如何在 JetBrains 系列 IDE 中使用 InputTip

> [!Tip]
>
> - https://inputtip.abgox.com/FAQ/use-inputtip-in-jetbrains
> - [通过 AutoHotkey 官方论坛中 Descolada 大佬给出的解决方案实现](https://www.autohotkey.com/boards/viewtopic.php?t=130941#p576439)
> - 如果有其他 JAB 程序，也可以按照此步骤进行设置

1. 打开 Java Access Bridge (java 访问桥)

   - 如果命令不存在，请 [下载并安装 OpenJDK JRE](https://adoptium.net/temurin/releases/?os=windows&arch=x64&package=jre&version=8) 或其他 JDK
   - 请确保下方两个命令能正常运行。如果不能，请检查环境变量是否配置正确

     ```shell
     java -version
     ```

     ```shell
     jabswitch -enable
     ```

2. `托盘菜单` => `启用 JAB/JetBrains IDE 支持`

3. `托盘菜单` => `设置光标获取模式`，将 JetBrains IDE 应用添加到其中的 `JAB` 列表中

4. 如果未生效，请依次尝试以下操作并查看是否生效

   - 重启正在运行的 JetBrains IDE
   - 重启 InputTip : `托盘菜单` => `重启`
   - 重启系统

> [!Tip]
> 如果有多块屏幕，副屏幕上可能有坐标偏差，需要通过 `托盘菜单` => `设置特殊偏移量` 手动调整

### 关于符号

> [!Tip]
>
> - 部分应用窗口可能无法准确获取到输入光标位置，会导致符号无法显示
>   - [应用窗口兼容情况](https://inputtip.abgox.com/FAQ/support-app-list) 会记录这些特别的应用窗口
> - 你可以使用 `v2.33.0` 版本中新增的 `设置符号显示位置` 来解决此问题
> - 以 `WPS` 为例
>   - 使用 `设置符号显示位置`，根据窗口提示，将它添加到其中，即可实现在鼠标附近显示
>   - 这是一个折中的处理方案，此前的 `v1` 版本就一直使用它，稳定性非常好

#### 图片符号

> [!Tip]
>
> https://inputtip.abgox.com/FAQ/symbol-picture

- `InputTipSymbol\default` 文件夹中包含了默认的图片符号
- 当 `托盘菜单` 中 `更改配置` => `显示形式` => `2. 显示什么类型的符号`，选择 `显示图片符号` 时，会显示对应的图片符号
- 你也可以自己制作符号图片，或者将喜欢的符号图片放入 `InputTipSymbol` 目录下
  - 不应该放到 `default` 文件夹下
  - 图片必须是 `.png` 格式
  - [更多的符号图片](https://inputtip.abgox.com/download/extra)
- 设置方法: `托盘菜单` => `更改配置` => `图片符号`，在对应的下拉列表中选择图片路径
- 如果选择第一个空白路径，则不会显示对应状态的图片符号

#### 方块符号

> [!Tip]
>
> https://inputtip.abgox.com/FAQ/symbol-block

- 当 `托盘菜单` 中 `更改配置` => `显示形式` => `2. 显示什么类型的符号`，选择 `显示方块符号` 时，会在输入光标附近显示不同颜色的方块符号
- 默认中文状态为 **红色**，英文状态为 **蓝色**，大写锁定为 **绿色**
- 方块符号相关的配置: `托盘菜单` => `更改配置` => `方块符号`
- 当其中的方块符号的颜色设置修改为空时，则不会显示该状态的方块符号
  - 比如: 你只希望在中文状态下显示方块符号，那么就将 `英文状态时方块符号的颜色` 和 `大写锁定时方块符号的颜色` 的值都设置为空

#### 文本符号

> [!Tip]
>
> https://inputtip.abgox.com/FAQ/symbol-text

- 当 `托盘菜单` 中 `更改配置` => `显示形式` => `2. 显示什么类型的符号`，选择 `显示文本符号` 时，会显示对应的文本符号
- 默认中文状态为 `中`，英文状态为 `英`，大写锁定为 `大`
- 文本符号相关的配置: `托盘菜单` => `更改配置` => `文本符号`
- 当其中的文本字符的值为空时，则不会显示该状态的文本符号
  - 比如: 你只希望在中文状态下显示文本字符，那么就将 `英文状态时的文本字符` 和 `大写锁定时的文本字符` 的值都设置为空

### 自定义鼠标样式

> [!Tip]
>
> - 也可以直接下载 [已经适配的鼠标样式](https://inputtip.abgox.com/download/extra) 来使用
> - `InputTip.exe` 启动后，会在同级目录下生成 `InputTipCursor` 目录，其中包括 `default` 文件夹
>   - `default` 用于存放中文/英文/大写锁定状态的 **默认** 鼠标样式

1. 你需要在 `InputTipCursor` 目录下创建一个文件夹

   - 文件夹中只能包含鼠标样式文件(后缀名为 `.cur` 或 `.ani`)

   - 必须使用以下表格中的文件名(大小写都可以)

   - 每个文件都不是必须的，但建议至少添加 `Arrow`，`IBeam`，`Hand`

     | 文件名(类型) |              说明               |
     | :----------: | :-----------------------------: |
     |    Arrow     |            普通选择             |
     |    IBeam     |        文本选择/文本输入        |
     |     Hand     |            链接选择             |
     | AppStarting  |            后台工作             |
     |     Wait     |              忙碌               |
     |   SizeAll    |              移动               |
     |   SizeNWSE   | 对角线调整大小 1 (左上 => 右下) |
     |   SizeNESW   | 对角线调整大小 2 (左下 => 右上) |
     |    SizeWE    |          水平调整大小           |
     |    SizeNS    |          垂直调整大小           |
     |      No      |           无法(禁用)            |
     |     Help     |            帮助选择             |
     |    Cross     |            精度选择             |
     |   UpArrow    |            备用选择             |
     |     Pin      |            位置选择             |
     |    Person    |            人员选择             |
     |     Pen      |              手写               |

   - 详情参考 [微软文档: 关于光标(游标)](https://learn.microsoft.com/windows/win32/menurc/about-cursors)

2. `托盘菜单` => `更改配置` => `鼠标样式` => 在下拉列表中选择对应文件夹目录路径

> [!Warning]
>
> - 你应该尽量让三种状态下的鼠标样式文件夹中包含的鼠标样式文件的数量和类型是一致的
> - 比如：
>   - 如果中文状态的目录路径下有 `IBeam.cur` 或 `IBeam.ani` 文件，英文状态或大写锁定的目录路径下没有。
>   - 则切换到中文状态时，会加载中文状态的 `IBeam.cur`
>   - 但是再切换到英文或大写锁定时，`IBeam` 类型的鼠标样式不会变化，因为英文和大写锁定缺少对应的样式文件

### 兼容情况

#### [应用窗口兼容情况](https://inputtip.abgox.com/FAQ/support-app-list)

#### 输入法兼容情况

> [!Tip]
>
> InputTip 使用 **【通用】** 和 **【自定义】** 模式兼容各类输入法，默认使用 **【通用】** 模式

- **【通用】**

  - [微信输入法](https://z.weixin.qq.com/)
  - [搜狗输入法](https://shurufa.sogou.com/)，[搜狗五笔输入法](https://wubi.sogou.com/)
  - [QQ 输入法](https://qq.pinyin.cn/)
  - [百度输入法](https://shurufa.baidu.com/)
  - 微软拼音，微软五笔，微软仓颉...
  - [冰凌输入法](https://icesofts.com/)
  - 小鹤音形输入法
    - 需要使用 [多多输入法生成器](https://duo.ink/ddimegen/ddimegen-desc.html) 生成
    - 使用 [多多输入法生成器](https://duo.ink/ddimegen/ddimegen-desc.html) 生成的输入法都可用
  - [小小输入法](http://yongim.ysepan.com/)
  - [华宇拼音输入法](https://pinyin.thunisoft.com/)
  - [影子输入法](https://gitee.com/orz707/Yzime)
    - 需要关闭影子输入法中的 `tsf`
    - 在键盘布局中，选择一个能正常识别状态的输入法(建议选择微信输入法、搜狗输入法等)
    - 然后正常使用影子输入法即可
  - [可可五笔](https://suke.kim/)
  - 谷歌输入法
  - ...

- **【自定义】**

  - 一个万能的模式，根据规则列表依次匹配，需要根据实际情况添加一条或多条规则
  - 详情参考: [关于【自定义】模式](https://inputtip.abgox.com/FAQ/custom-input-mode)
  - 可以通过 `设置输入法模式` => `自定义` 使用以下已知可用的规则配置:

    - `如果所有规则都不匹配，应该判断为` 这个配置项选择 `中文状态` (`英文状态` 相反)

    - [小鹤音形](https://flypy.com/download/)

      - 经过测试，`v10.11.4` 版本中，添加以下规则即可

        | 顺序 | 状态码规则 | 切换码规则 | 输入法状态 |
        | :--: | :--------: | :--------: | :--------: |
        |  1   |            |    257     |    英文    |

    - [小狼毫(rime)输入法](https://rime.im/download/)

      - 经过测试，`v0.16.1` 版本中，添加以下规则即可

        | 顺序 | 状态码规则 | 切换码规则 | 输入法状态 |
        | :--: | :--------: | :--------: | :--------: |
        |  1   |            |    偶数    |    英文    |

    - [讯飞输入法](https://srf.xunfei.cn/)

      - 经过测试，`v3.0` 版本中，添加以下规则即可

        | 顺序 | 状态码规则 | 切换码规则 | 输入法状态 |
        | :--: | :--------: | :--------: | :--------: |
        |  1   |    奇数    |            |    英文    |

    - [手心输入法](https://www.xinshuru.com/)

      - 经过测试，`v3.1` 版本中，添加以下规则即可
      - 获取到的输入法状态可能有误，导致基于此的相关功能都可能有问题

        | 顺序 | 状态码规则 | 切换码规则 | 输入法状态 |
        | :--: | :--------: | :--------: | :--------: |
        |  1   |            |     1      |    英文    |

### 参考项目

- [ImTip - aardio](https://github.com/aardio/ImTip)
- [KBLAutoSwitch - flyinclouds](https://github.com/flyinclouds/KBLAutoSwitch)
- [AutoHotkeyScripts - Tebayaki](https://github.com/Tebayaki/AutoHotkeyScripts)
- [language-indicator - yakunins](https://github.com/yakunins/language-indicator)
- [RedDot - Autumn-one](https://github.com/Autumn-one/RedDot)
  - [InputTip v1](../v1) 在鼠标附近显示带文字的方块符号，后来 [InputTip v2](./) 版本默认通过不同颜色的鼠标样式来区分
  - 之后看到了 [RedDot - Autumn-one](https://github.com/Autumn-one/RedDot) 和 [language-indicator - yakunins](https://github.com/yakunins/language-indicator) 的设计，通过不同颜色加上小符号来判断不同输入法状态
  - InputTip 也参照了这样的设计，因为这样的实现很简单，其实就是 [InputTip v1](../v1) 中带文字的方块符号，去掉文字，加上不同的背景颜色

### Stars

**如果 `InputTip` 对你有所帮助，请考虑给它一个 Star ⭐**

<a href="https://github.com/abgox/InputTip">
  <picture>
    <source media="(prefers-color-scheme: light)" srcset="http://reporoster.com/stars/abgox/InputTip"> <!-- light theme -->
    <img alt="stargazer-widget" src="http://reporoster.com/stars/dark/abgox/InputTip"> <!-- dark theme -->
  </picture>
</a>

### 赞赏支持

> [!Tip]
>
> 这里是 [赞赏名单](https://inputtip.abgox.com/sponsor)，非常感谢所有赞助者！

<a href='https://ko-fi.com/W7W817R6Z3' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://me.abgox.com/buy-me-a-coffee.png' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

![赞赏支持](https://me.abgox.com/support.png)
