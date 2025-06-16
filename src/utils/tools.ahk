; InputTip

/**
 * 将数组转换成字符串，并用指定分隔符连接
 * @param {Array} arr 数组
 * @param {String} separator 分隔符
 * @returns {String} 连接后的字符串
 */
arrJoin(arr, separator := ",") {
    res := ""
    for i, v in arr {
        res .= i = arr.Length ? v : v separator
    }
    return res
}

/**
 * 检查是否存在子目录
 * @param {String} path 目录路径
 * @returns 是否存在子目录
 */
hasChildDir(path) {
    Loop Files path "\*", "D" {
        return A_Index
    }
}

/**
 * 鼠标是否悬浮在指定窗口上
 * @param WinTitle  窗口标题
 * @returns 是否悬浮在窗口上
 */
isMouseOver(WinTitle) {
    try {
        MouseGetPos(, , &Win)
        return WinExist(WinTitle " ahk_id " Win)
    }
    return 0
}

/**
 * 替换环境变量中的变量
 * @param {String} str 环境变量
 * @returns {String} 替换后的字符串
 */
replaceEnvVariables(str) {
    while RegExMatch(str, "%\w+%", &match) {
        env := match[]
        envValue := EnvGet(StrReplace(env, "%", ""))
        str := StrReplace(str, env, envValue)
    }
    return str
}

/**
 * 获取到屏幕信息
 * @returns {Array} 一个数组 [{num:1,left:0,top:0,right:0,bottom:0}]
 */
getScreenInfo() {
    list := []
    MonitorCount := MonitorGetCount()
    MonitorPrimary := MonitorGetPrimary()
    Loop MonitorCount
    {
        MonitorGet A_Index, &L, &T, &R, &B
        MonitorGetWorkArea A_Index, &WL, &WT, &WR, &WB
        list.Push({
            main: MonitorPrimary,
            count: MonitorCount,
            num: A_Index,
            left: L,
            top: T,
            right: R,
            bottom: B
        })
    }
    return list
}

/**
 * 激活的窗口在哪个屏幕
 * 
 * 调用时外层必须使用 try 包裹，因为 MouseGetPos 在极少数情况下，会因为权限问题报错拒绝访问
 * @example
 * try {
 *      isWhichScreen()
 *      ; ...
 * }
 */
isWhichScreen(screenList) {
    try {
        WinGetClientPos(&x, &y, &w, &h, "A")

        ; 窗口的中心坐标
        cx := x + w / 2
        cy := y + h / 2
    } catch {
        return ""
    }

    for v in screenList {
        if (cx >= v.left && cx <= v.right && cy >= v.top && cy <= v.bottom) {
            return v
        }
    }
}

; 从字符串中提取出数字，可以带负号
returnNumber(value) {
    if (value = "" || !(value ~= "\d")) {
        return 0
    }
    RegExMatch(value, "(-?\d+)", &numbers)
    return numbers[1]
}

; 设置托盘图标
setTrayIcon(path) {
    try {
        TraySetIcon(path, , 1)
    } catch {
        if (A_IsPaused) {
            path := "InputTipSymbol\default\favicon-pause.png"
            global iconPaused := path
            writeIni("iconPaused", path)
        } else {
            path := "InputTipSymbol\default\favicon.png"
            global iconRunning := path
            writeIni("iconRunning", path)
        }
        TraySetIcon(path, , 1)
    }
}
