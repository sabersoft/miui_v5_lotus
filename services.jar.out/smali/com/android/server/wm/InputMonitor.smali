.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$Callbacks;


# instance fields
.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .parameter "windowHandle"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_0

    .line 137
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 139
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 144
    return-void
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    .prologue
    .line 147
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 427
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 321
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 322
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 321
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 399
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 401
    :cond_0
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 3
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 313
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 314
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    return-wide v1

    .line 313
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 1
    .parameter "policyFlags"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;)J
    .locals 8
    .parameter "inputApplicationHandle"
    .parameter "inputWindowHandle"

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, appWindowToken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, windowState:Lcom/android/server/wm/WindowState;
    if-eqz p2, :cond_0

    .line 97
    :try_start_0
    iget-object v4, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v3, v0

    .line 98
    if-eqz v3, :cond_0

    .line 99
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 102
    :cond_0
    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 103
    iget-object v4, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v2, v0

    .line 106
    :cond_1
    if-eqz v3, :cond_2

    .line 107
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input event dispatching timed out sending to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;)V

    .line 117
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v2, :cond_4

    iget-object v4, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v4, :cond_4

    .line 123
    :try_start_1
    iget-object v4, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v4}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z

    move-result v1

    .line 124
    .local v1, abort:Z
    if-nez v1, :cond_4

    .line 127
    iget-wide v4, v2, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    .end local v1           #abort:Z
    :goto_1
    return-wide v4

    .line 109
    :cond_2
    if-eqz v2, :cond_3

    .line 110
    :try_start_2
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input event dispatching timed out sending to application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 113
    :cond_3
    :try_start_3
    const-string v4, "WindowManager"

    const-string v6, "Input event dispatching timed out."

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v4

    .line 132
    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 264
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 269
    :cond_0
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5
    .parameter "inputWindowHandle"

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 79
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 80
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 83
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 288
    return-void
.end method

.method public notifySIMCardOperationInfo(JZ)V
    .locals 1
    .parameter "whenNanos"
    .parameter "simPresent"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifySIMCardOperationInfo(JZ)V

    .line 293
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 2
    .parameter "window"

    .prologue
    const/4 v1, 0x1

    .line 371
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_0

    .line 376
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 379
    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 382
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 420
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 421
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 423
    :cond_0
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .parameter "newApp"

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 368
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 363
    .local v0, handle:Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 364
    iget-wide v1, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v1, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 366
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_0
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 2
    .parameter "newWindow"
    .parameter "updateInputWindows"

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1

    .line 341
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 349
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 351
    if-eqz p2, :cond_1

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 355
    :cond_1
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 154
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 410
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 412
    :cond_0
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 19
    .parameter "force"

    .prologue
    .line 158
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 258
    :goto_0
    return-void

    .line 161
    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 173
    .local v16, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    const/4 v11, 0x1

    .line 174
    .local v11, inDrag:Z
    :goto_1
    if-eqz v11, :cond_1

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 179
    .local v5, dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    if-eqz v5, :cond_3

    .line 180
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 187
    .end local v5           #dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 188
    .local v3, NFW:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v3, :cond_4

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/FakeWindowImpl;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 188
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 173
    .end local v3           #NFW:I
    .end local v10           #i:I
    .end local v11           #inDrag:Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 182
    .restart local v5       #dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    .restart local v11       #inDrag:Z
    :cond_3
    const-string v17, "WindowManager"

    const-string v18, "Drag is in progress but there is no drag window handle."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 192
    .end local v5           #dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    .restart local v3       #NFW:I
    .restart local v10       #i:I
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 193
    .local v2, N:I
    add-int/lit8 v10, v2, -0x1

    :goto_4
    if-ltz v10, :cond_c

    .line 194
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 195
    .local v4, child:Lcom/android/server/wm/WindowState;
    iget-object v12, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 196
    .local v12, inputChannel:Landroid/view/InputChannel;
    iget-object v13, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 197
    .local v13, inputWindowHandle:Lcom/android/server/input/InputWindowHandle;
    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    iget-boolean v0, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 193
    :cond_5
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 202
    :cond_6
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 203
    .local v6, flags:I
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 205
    .local v15, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_8

    const/4 v8, 0x1

    .line 206
    .local v8, hasFocus:Z
    :goto_6
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v14

    .line 207
    .local v14, isVisible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_9

    const/16 v17, 0x7d4

    move/from16 v0, v17

    if-eq v15, v0, :cond_9

    const/4 v9, 0x1

    .line 212
    .local v9, hasWallpaper:Z
    :goto_7
    if-eqz v11, :cond_7

    if-eqz v14, :cond_7

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 217
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 218
    iput v6, v13, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 219
    iput v15, v13, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 220
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v13, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 221
    iput-boolean v14, v13, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 222
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 223
    iput-boolean v8, v13, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 224
    iput-boolean v9, v13, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 225
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    move/from16 v17, v0

    :goto_8
    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 226
    iget v0, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 227
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 228
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 229
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 231
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 232
    .local v7, frame:Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 233
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 234
    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 235
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 237
    iget v0, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_b

    .line 241
    const/high16 v17, 0x3f80

    iget v0, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 246
    :goto_9
    iget-object v0, v13, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 248
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    goto/16 :goto_5

    .line 205
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #hasFocus:Z
    .end local v9           #hasWallpaper:Z
    .end local v14           #isVisible:Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 207
    .restart local v8       #hasFocus:Z
    .restart local v14       #isVisible:Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 225
    .restart local v9       #hasWallpaper:Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 243
    .restart local v7       #frame:Landroid/graphics/Rect;
    :cond_b
    const/high16 v17, 0x3f80

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_9

    .line 252
    .end local v4           #child:Lcom/android/server/wm/WindowState;
    .end local v6           #flags:I
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #hasFocus:Z
    .end local v9           #hasWallpaper:Z
    .end local v12           #inputChannel:Landroid/view/InputChannel;
    .end local v13           #inputWindowHandle:Lcom/android/server/input/InputWindowHandle;
    .end local v14           #isVisible:Z
    .end local v15           #type:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_0
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 277
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method
