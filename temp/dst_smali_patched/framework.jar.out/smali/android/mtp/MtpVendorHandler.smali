.class public final Landroid/mtp/MtpVendorHandler;
.super Ljava/lang/Object;
.source "MtpVendorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpVendorHandler$MtpVendorServer;,
        Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.mtp"

.field private static final RESPONSE_TIMEOUT:J = 0x5L

.field private static final TAG:Ljava/lang/String; = "MtpVendorHandler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

.field private mNativeContext:I

.field private mResponseCompleted:Z

.field private final mResponseLock:Ljava/util/concurrent/Semaphore;

.field private mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

.field private mVendorResult:I

.field private mtpVendorReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/mtp/MtpVendorHandler;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    iput-object v1, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    iput v2, p0, Landroid/mtp/MtpVendorHandler;->mVendorResult:I

    new-instance v0, Landroid/mtp/MtpVendorHandler$1;

    invoke-direct {v0, p0}, Landroid/mtp/MtpVendorHandler$1;-><init>(Landroid/mtp/MtpVendorHandler;)V

    iput-object v0, p0, Landroid/mtp/MtpVendorHandler;->mtpVendorReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Landroid/mtp/MtpVendorHandler;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/mtp/MtpVendorHandler$MtpVendorServer;

    invoke-direct {v0, p0, v1}, Landroid/mtp/MtpVendorHandler$MtpVendorServer;-><init>(Landroid/mtp/MtpVendorHandler;Landroid/mtp/MtpVendorHandler$1;)V

    iput-object v0, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Landroid/mtp/MtpVendorHandler;->mResponseLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method static synthetic access$000(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Landroid/mtp/MtpVendorHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Landroid/mtp/MtpVendorHandler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/mtp/MtpVendorHandler;->mVendorResult:I

    return p1
.end method

.method static synthetic access$400(Landroid/mtp/MtpVendorHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    return v0
.end method

.method static synthetic access$402(Landroid/mtp/MtpVendorHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    return p1
.end method

.method static synthetic access$500(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/IMtpVendorServer;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    return-object v0
.end method

.method static synthetic access$600(Landroid/mtp/MtpVendorHandler;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mResponseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$700(Landroid/mtp/MtpVendorHandler;I[I[B)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpVendorHandler;->native_send_vendor_response(I[I[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/mtp/MtpVendorHandler;I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpVendorHandler;->native_send_vendor_event(I[I)V

    return-void
.end method

.method private final native native_send_vendor_event(I[I)V
.end method

.method private final native native_send_vendor_response(I[I[B)I
.end method


# virtual methods
.method public onVendorCommand(I[I[B)I
    .locals 8
    .parameter "command"
    .parameter "params"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .local v2, ret:I
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.mtp.action.COMMAND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v3, "EXTRA_MTP_OP_CODE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "EXTRA_MTP_PARAMS"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v3, "EXTRA_MTP_CLASS"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EXTRA_MTP_PACKAGE"

    const-string v4, "android.mtp"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v3, "EXTRA_MTP_DATA"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget-object v4, p0, Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Landroid/mtp/MtpVendorHandler;->mContext:Landroid/content/Context;

    const-string v4, "com.sonyericsson.mtp.permission.MTP_STACK"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :try_start_1
    iget-object v3, p0, Landroid/mtp/MtpVendorHandler;->mResponseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v4, p0, Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-boolean v3, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    const/16 v5, 0x2002

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/mtp/IMtpVendorServer;->sendVendorResponse(I[I[B)I

    move-result v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return v2

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .local v0, exception:Ljava/lang/InterruptedException;
    iget-object v4, p0, Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_6
    iget-object v3, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    const/16 v5, 0x2002

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/mtp/IMtpVendorServer;->sendVendorResponse(I[I[B)I

    move-result v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .end local v0           #exception:Ljava/lang/InterruptedException;
    :cond_2
    :try_start_7
    iget v2, p0, Landroid/mtp/MtpVendorHandler;->mVendorResult:I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0
.end method

.method public setMtpVendorServer(Landroid/mtp/IMtpVendorServer;)V
    .locals 0
    .parameter "vendorServer"

    .prologue
    iput-object p1, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    return-void
.end method

.method public start(I)V
    .locals 4
    .parameter "nativeContext"

    .prologue
    iput p1, p0, Landroid/mtp/MtpVendorHandler;->mNativeContext:I

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MtpVendorHandlerThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/mtp/MtpVendorHandler;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Landroid/mtp/MtpVendorHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    iget-object v2, p0, Landroid/mtp/MtpVendorHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;-><init>(Landroid/mtp/MtpVendorHandler;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.mtp.action.NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sonyericsson.mtp.category.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.mtp.category.EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/mtp/MtpVendorHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MtpVendorHandler;->mtpVendorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpVendorHandler;->mtpVendorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/MtpVendorHandler;->mNativeContext:I

    return-void
.end method
