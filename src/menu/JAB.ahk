; InputTip

fn_JAB(item, *) {
    global enableJABSupport := !enableJABSupport
    writeIni("enableJABSupport", enableJABSupport)
    A_TrayMenu.ToggleCheck(item)
    if (enableJABSupport) {
        if (runJAB()) {
            return
        }
        createUniqueGui(JABGui).Show()
        JABGui(info) {
            g := createGuiOpt("InputTip - 启用 JAB/JetBrains IDE 支持")
            g.AddText(, "已经成功启用了 JAB/JetBrains IDE 支持，你还需要进行以下操作步骤:           ")

            if (info.i) {
                return g
            }
            w := info.w
            bw := w - g.MarginX * 2

            g.AddEdit("xs -VScroll ReadOnly cGray w" w, "1. 启用 Java Access Bridge (如果不需要符号显示，忽略此步骤)`n2. 点击下方的或【托盘菜单】中的【设置光标获取模式】`n3. 设置 JetBrains IDE 或其他 JAB 应用进程的光标获取模式为【JAB】`n4. 如果未生效，请重启 InputTip`n5. 如果仍未生效，请重启正在运行的 JetBrains IDE 或其他 JAB 应用`n6. 如果仍未生效，请重启系统`n7. 有多块屏幕时，副屏幕上可能有坐标偏差，需要通过【设置特殊偏移量】调整")
            g.AddText("cRed", "部分 JDK/JRE 中的 Java Access Bridge 无效，推荐使用 Microsoft OpenJDK 21")
            g.AddLink(, '详细操作步骤，请查看:   <a href="https://inputtip.abgox.com/FAQ/use-inputtip-in-jetbrains">官网</a>   <a href="https://github.com/abgox/InputTip#如何在-jetbrains-系列-ide-中使用-inputtip">Github</a>   <a href="https://gitee.com/abgox/InputTip#如何在-jetbrains-系列-ide-中使用-inputtip">Gitee</a>')
            g.AddButton("xs w" w, "【设置光标获取模式】").OnEvent("Click", fn_cursor_mode)
            g.AddButton("xs w" w, "【设置特殊偏移量】").OnEvent("Click", fn_app_offset)
            y := g.AddButton("xs w" w, "我知道了")
            y.Focus()
            y.OnEvent("Click", e_close)
            e_close(*) {
                g.Destroy()
            }
            return g
        }
    } else {
        SetTimer(killAppTimer, -1)
        killAppTimer() {
            try {
                killJAB(1, A_IsCompiled || A_IsAdmin)
            }
        }
    }
}
