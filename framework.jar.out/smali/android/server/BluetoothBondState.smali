.class Landroid/server/BluetoothBondState;
.super Ljava/lang/Object;
.source "BluetoothBondState.java"


# static fields
.field private static final AUTO_PAIRING_BLACKLIST:Ljava/lang/String; = "/etc/bluetooth/auto_pairing.conf"

.field private static final DBG:Z = true

.field private static final DYNAMIC_AUTO_PAIRING_BLACKLIST:Ljava/lang/String; = "/data/misc/bluetooth/dynamic_auto_pairing.conf"

.field private static final TAG:Ljava/lang/String; = "BluetoothBondState"


# instance fields
.field private mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

.field private mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

.field private final mContext:Landroid/content/Context;

.field private mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

.field private mPairingRequestRcvd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingOutgoingBonding:Ljava/lang/String;

.field private final mPinAttempt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/server/BluetoothService;

.field private final mState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 3
    .parameter "context"
    .parameter "service"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    .line 337
    new-instance v1, Landroid/server/BluetoothBondState$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothBondState$1;-><init>(Landroid/server/BluetoothBondState;)V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 497
    new-instance v1, Landroid/server/BluetoothBondState$2;

    invoke-direct {v1, p0}, Landroid/server/BluetoothBondState$2;-><init>(Landroid/server/BluetoothBondState;)V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    .line 91
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothInputProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothInputProfileHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Landroid/server/BluetoothBondState;->readAutoPairingData()V

    .line 98
    return-void
.end method

.method static synthetic access$002(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$102(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$200(Landroid/server/BluetoothBondState;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    return-object v0
.end method

.method private closeProfileProxy()V
    .locals 3

    .prologue
    .line 326
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 328
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    .line 329
    const/4 v1, 0x2

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 332
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 333
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 335
    :cond_1
    return-void
.end method

.method private copyAutoPairingData()V
    .locals 11

    .prologue
    .line 358
    const/4 v3, 0x0

    .line 359
    .local v3, in:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 361
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v8

    if-eqz v8, :cond_2

    .line 378
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 379
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 382
    .end local v2           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 364
    .restart local v2       #file:Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/etc/bluetooth/auto_pairing.conf"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 365
    .end local v3           #in:Ljava/io/FileInputStream;
    .local v4, in:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    const-string v8, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 367
    .end local v6           #out:Ljava/io/FileOutputStream;
    .local v7, out:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_4
    new-array v0, v8, [B

    .line 369
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_4

    .line 370
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_1

    .line 372
    .end local v0           #buf:[B
    .end local v5           #len:I
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 373
    .end local v2           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    const-string v8, "BluetoothBondState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException: copyAutoPairingData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 378
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 379
    :cond_3
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 380
    :catch_1
    move-exception v8

    goto :goto_0

    .line 378
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v5       #len:I
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :cond_4
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 379
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 380
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 381
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_0

    .line 374
    .end local v0           #buf:[B
    .end local v2           #file:Ljava/io/File;
    .end local v5           #len:I
    :catch_3
    move-exception v1

    .line 375
    .local v1, e:Ljava/io/IOException;
    :goto_3
    :try_start_8
    const-string v8, "BluetoothBondState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: copyAutoPairingData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 378
    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 379
    :cond_7
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 380
    :catch_4
    move-exception v8

    goto :goto_0

    .line 377
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 378
    :goto_4
    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 379
    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 380
    :cond_9
    :goto_5
    throw v8

    :catch_5
    move-exception v9

    goto :goto_5

    .line 377
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 374
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 372
    .end local v2           #file:Ljava/io/File;
    :catch_8
    move-exception v1

    goto :goto_2

    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_2

    .line 380
    :catch_a
    move-exception v8

    goto/16 :goto_0
.end method

.method private getProfileProxy()V
    .locals 4

    .prologue
    .line 312
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 314
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_0

    .line 315
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 319
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_1

    .line 320
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 323
    :cond_1
    return-void
.end method

.method private loadBondState()V
    .locals 12

    .prologue
    .line 114
    iget-object v9, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v9

    const/16 v10, 0xb

    if-eq v9, v10, :cond_1

    .line 141
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v9, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getAdapterProperties()Landroid/server/BluetoothAdapterProperties;

    move-result-object v9

    const-string v10, "Devices"

    invoke-virtual {v9, v10}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, val:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 122
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, bonds:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 126
    iget-object v9, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 127
    const-string v9, "BluetoothBondState"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " devices"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    .line 130
    .local v3, device:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v3}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, address:Ljava/lang/String;
    const/16 v7, 0xa

    .line 132
    .local v7, state:I
    iget-object v9, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getDeviceProperties()Landroid/server/BluetoothDeviceProperties;

    move-result-object v6

    .line 134
    .local v6, properties:Landroid/server/BluetoothDeviceProperties;
    invoke-virtual {v6, v0}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    .line 135
    const-string v9, "Paired"

    invoke-virtual {v6, v0, v9}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 137
    const/16 v7, 0xc

    .line 139
    :cond_2
    iget-object v9, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private setProfilePriorities(Ljava/lang/String;I)V
    .locals 4
    .parameter "address"
    .parameter "state"

    .prologue
    const/16 v3, 0x64

    const/4 v2, -0x1

    .line 465
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 467
    .local v0, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, v0, p2}, Landroid/server/BluetoothInputProfileHandler;->setInitialInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 473
    const/16 v1, 0xc

    if-ne p2, v1, :cond_4

    .line 474
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 476
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v0, v3}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 479
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 481
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0, v3}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 492
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_3

    .line 493
    :cond_2
    const-string v1, "BluetoothBondState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_3
    return-void

    .line 483
    :cond_4
    const/16 v1, 0xa

    if-ne p2, v1, :cond_1

    .line 484
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_5

    .line 485
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 487
    :cond_5
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method private updateAutoPairingData(Ljava/lang/String;)V
    .locals 7
    .parameter "address"

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 439
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 440
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .local v3, str:Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 442
    const-string v4, "DynamicAddressBlacklist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 452
    if-eqz v2, :cond_3

    .line 454
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 460
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #str:Ljava/lang/StringBuilder;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return-void

    .line 455
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #str:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 457
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 447
    .end local v3           #str:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .line 448
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "BluetoothBondState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException: updateAutoPairingData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    if-eqz v1, :cond_1

    .line 454
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 455
    :catch_2
    move-exception v4

    goto :goto_0

    .line 449
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 450
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v4, "BluetoothBondState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: updateAutoPairingData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 452
    if-eqz v1, :cond_1

    .line 454
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 455
    :catch_4
    move-exception v4

    goto :goto_0

    .line 452
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    .line 454
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 457
    :cond_2
    :goto_4
    throw v4

    .line 455
    :catch_5
    move-exception v5

    goto :goto_4

    .line 452
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 449
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 447
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #str:Ljava/lang/StringBuilder;
    :cond_3
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addAutoPairingFailure(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothBondState;->updateAutoPairingData(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attempt(Ljava/lang/String;)V
    .locals 5
    .parameter "address"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 301
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 302
    const/4 v1, 0x1

    .line 306
    .local v1, newAttempt:I
    :goto_0
    const-string v2, "BluetoothBondState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attemp newAttempt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    .line 304
    .end local v1           #newAttempt:I
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .restart local v1       #newAttempt:I
    goto :goto_0

    .line 299
    .end local v0           #attempt:Ljava/lang/Integer;
    .end local v1           #newAttempt:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clearPinAttempts(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothBondState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPinAttempts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAttempt(Ljava/lang/String;)I
    .locals 2
    .parameter "address"

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 293
    const/4 v1, 0x0

    .line 295
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 291
    .end local v0           #attempt:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .locals 2
    .parameter "address"

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 250
    const/16 v1, 0xa

    .line 252
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 248
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAutoPairingFailed(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 287
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initBondState()V
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->getProfileProxy()V

    .line 110
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->loadBondState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAutoPairingBlacklisted(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v4, 0x1

    .line 205
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 206
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return v4

    .line 211
    :cond_1
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 212
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    .restart local v0       #blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 217
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 219
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 220
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    .local v1, blacklistName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 225
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    .line 226
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    .restart local v1       #blacklistName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .line 231
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 239
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 244
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .locals 4
    .parameter "state"

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 256
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 262
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized readAutoPairingData()V
    .locals 11

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_1

    .line 432
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 386
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->copyAutoPairingData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    const/4 v2, 0x0

    .line 389
    .local v2, fstream:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 390
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .local v3, fstream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 391
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 393
    .local v1, file:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 394
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 395
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "//"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 396
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, value:[Ljava/lang/String;
    if-eqz v7, :cond_2

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 398
    const/4 v8, 0x1

    aget-object v8, v7, v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, val:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "AddressBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 400
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 419
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 420
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    const-string v8, "BluetoothBondState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException: readAutoPairingData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 424
    if-eqz v2, :cond_0

    .line 426
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 427
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 402
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #val:[Ljava/lang/String;
    .restart local v7       #value:[Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :try_start_6
    aget-object v8, v7, v8

    const-string v9, "ExactNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 403
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothBondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 421
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 422
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_7
    const-string v8, "BluetoothBondState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: readAutoPairingData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 424
    if-eqz v2, :cond_0

    .line 426
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 427
    :catch_3
    move-exception v8

    goto/16 :goto_0

    .line 405
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #val:[Ljava/lang/String;
    .restart local v7       #value:[Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    :try_start_9
    aget-object v8, v7, v8

    const-string v9, "PartialNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 406
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothBondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 424
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_4
    if-eqz v2, :cond_5

    .line 426
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 429
    :cond_5
    :goto_5
    :try_start_b
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 385
    .end local v2           #fstream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 408
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #val:[Ljava/lang/String;
    .restart local v7       #value:[Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    :try_start_c
    aget-object v8, v7, v8

    const-string v9, "FixedPinZerosKeyboardBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 409
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothBondState;->mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 411
    :cond_7
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "DynamicAddressBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 412
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 415
    :cond_8
    const-string v8, "BluetoothBondState"

    const-string v9, "Error parsing Auto pairing blacklist file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_1

    .line 424
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :cond_9
    if-eqz v3, :cond_a

    .line 426
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    move-object v2, v3

    .line 429
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 427
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    move-object v2, v3

    .line 429
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 427
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    :catch_5
    move-exception v9

    goto :goto_5

    .line 424
    :catchall_2
    move-exception v8

    goto :goto_4

    .line 421
    :catch_6
    move-exception v0

    goto/16 :goto_3

    .line 419
    :catch_7
    move-exception v0

    goto/16 :goto_2

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :cond_a
    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;I)V
    .locals 1
    .parameter "address"
    .parameter "state"

    .prologue
    .line 144
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;II)V
    .locals 8
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    .line 149
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothBondState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBondState address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 152
    .local v1, oldState:I
    if-ne v1, p2, :cond_0

    .line 202
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    if-ne v1, v7, :cond_1

    .line 159
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;

    .line 164
    :cond_1
    const/16 v3, 0xc

    if-ne p2, v3, :cond_5

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, setTrust:Z
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 168
    :cond_2
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1, v2}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 169
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    .end local v2           #setTrust:Z
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothBondState;->setProfilePriorities(Ljava/lang/String;I)V

    .line 182
    const-string v3, "BluetoothBondState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bond state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string v3, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    if-ne p2, v6, :cond_8

    .line 190
    if-gtz p3, :cond_4

    .line 191
    const-string v3, "BluetoothBondState"

    const-string/jumbo v4, "setBondState() called to unbond device, but reason code is invalid. Overriding reason code with BOND_RESULT_REMOVED"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/16 p3, 0x9

    .line 195
    :cond_4
    const-string v3, "android.bluetooth.device.extra.REASON"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :goto_2
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 149
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #oldState:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 171
    .restart local v1       #oldState:I
    :cond_5
    if-ne p2, v7, :cond_7

    .line 172
    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-nez v3, :cond_3

    .line 173
    :cond_6
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->getProfileProxy()V

    goto/16 :goto_1

    .line 175
    :cond_7
    if-ne p2, v6, :cond_3

    .line 176
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 198
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_8
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized setPendingOutgoingBonding(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
