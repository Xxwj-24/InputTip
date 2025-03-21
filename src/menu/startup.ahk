fn_startup(item, *) {
    global isStartUp
    if (isStartUp) {
        if (gc.w.updateUserGui) {
            gc.w.updateUserGui.Destroy()
            gc.w.updateUserGui := ""
        }
        try {
            FileDelete(A_Startup "\" fileLnk)
        }
        try {
            RegDelete(HKEY_startup, "abgox - " A_ScriptName)
        }
        try {
            Run('schtasks /delete /tn "abgox.InputTip.noUAC" /f', , "Hide")
        }

        A_TrayMenu.Uncheck(item)
        isStartUp := 0
        writeIni("isStartUp", isStartUp)

        if (gc.w.startupGui) {
            gc.w.startupGui.Destroy()
            gc.w.startupGui := ""
        }
        createGui(cancelGui).Show()
        cancelGui(info) {
            g := createGuiOpt()
            g.AddText(, "InputTip 的")
            g.AddText("yp cRed", "开机自启动")
            g.AddText("yp", "已取消")
            g.AddText("xs", "可通过「托盘菜单」=>「开机自启动」再次启用")

            if (info.i) {
                return g
            }
            w := info.w
            bw := w - g.MarginX * 2

            y := g.AddButton("w" w, "我知道了")
            y.Focus()
            y.OnEvent("Click", e_yes)
            e_yes(*) {
                g.Destroy()
            }
            gc.w.startupGui := g
            return g
        }
    } else {
        if (gc.w.startupGui) {
            gc.w.startupGui.Destroy()
            gc.w.startupGui := ""
        }
        createGui(startupGui).Show()
        startupGui(info) {
            g := createGuiOpt("InputTip - 设置开机自启动")
            g.AddLink(, '详情请查看:   <a href="https://inputtip.abgox.com/FAQ/startup">关于开机自启动</a>`n---------------------------------------------------------------------')


            g.AddText("xs cGray", "1. 下方有多种方式设置开机自启动，请选择有效的方式`n2. 推荐「任务计划程序」或「注册表」,「应用快捷方式」可能无效`n3. 以下两种方案可以避免每次启动都弹出管理员授权(UAC)窗口:`n   - 直接使用下方的「任务计划程序」`n   - 使用「注册表」或「应用快捷方式」，然后修改以下设置`n      - 将系统设置中的「更改用户账户控制设置」修改为【从不通知】")
            g.AddText("xs cRed", "4. 如果移动了软件所在位置，需要重新设置")

            if (info.i) {
                return g
            }
            w := info.w
            bw := w - g.MarginX * 2

            if (A_IsAdmin) {
                btnOpt := ''
                tip := ''
            } else {
                btnOpt := ' Disabled '
                tip := ' (非管理员身份运行时不可用)'
            }

            btn := g.AddButton("xs w" bw btnOpt, "「任务计划程序」" tip)

            btn.Focus()
            btn.OnEvent("Click", e_useTask)
            e_useTask(*) {
                if (createScheduleTask(A_ScriptFullPath, "abgox.InputTip.noUAC")) {
                    fn_update_user()
                    isStartUp := 1
                    FileCreateShortcut("C:\WINDOWS\system32\schtasks.exe", A_Startup "\" fileLnk, , "/run /tn `"abgox.InputTip.noUAC`"", fileDesc, favicon, , , 7)
                    fn_handle()
                } else {
                    fn_err_msg("添加任务计划程序失败!")
                }
            }
            g.AddButton("xs w" bw btnOpt, "「注册表」" tip).OnEvent("Click", e_useReg)
            e_useReg(*) {
                isStartUp := 3
                try {
                    RegWrite(A_ScriptFullPath, "REG_SZ", "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run", "abgox - " A_ScriptName)
                    fn_handle()
                } catch {
                    if (gc.w.subGui) {
                        gc.w.subGui.Destroy()
                        gc.w.subGui := ""
                    }
                    fn_err_msg("添加注册表失败!")
                }
            }
            btn := g.AddButton("xs w" bw, "「应用快捷方式」")
            if (!A_IsAdmin) {
                btn.Focus()
            }
            btn.OnEvent("Click", e_useLnk)
            e_useLnk(*) {
                isStartUp := 2
                FileCreateShortcut(A_ScriptFullPath, A_Startup "\" fileLnk, , , fileDesc, favicon, , , 7)
                fn_handle()
            }

            fn_handle(*) {
                g.Destroy()
                A_TrayMenu.Check(item)
                writeIni("isStartUp", isStartUp)
            }
            fn_err_msg(msg, *) {
                createGui(errGui).Show()
                errGui(info) {
                    g := createGuiOpt()
                    g.AddText("cRed", msg)
                    g.AddText("cRed", "你需要考虑使用其他方式设置开机自启动")

                    if (info.i) {
                        return g
                    }
                    w := info.w
                    bw := w - g.MarginX * 2


                    g.AddButton("w" bw, "我知道了").OnEvent("Click", e_close)
                    e_close(*) {
                        g.Destroy()
                    }
                    gc.w.subGui := g
                    return g
                }
            }
            gc.w.startupGui := g
            return g
        }
    }
}

; 创建/更新任务计划程序
createScheduleTask(path, taskName, *) {
    if (A_IsAdmin) {
        try {
            Run('powershell -NoProfile -Command $action = New-ScheduledTaskAction -Execute "`'\"' A_ScriptFullPath '\"`'";$principal = New-ScheduledTaskPrincipal -UserId "' userName '" -RunLevel Highest;$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable -DontStopOnIdleEnd -ExecutionTimeLimit 10 -RestartCount 3 -RestartInterval (New-TimeSpan -Minutes 1);$task = New-ScheduledTask -Action $action -Principal $principal -Settings $settings;Register-ScheduledTask -TaskName ' taskName ' -InputObject $task -Force', , "Hide")
            return 1
        } catch {
            return 0
        }
    }
    return 0
}
