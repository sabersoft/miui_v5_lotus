.class public Lmiui/provider/GalleryCloudSyncTagUtils;
.super Ljava/lang/Object;
.source "GalleryCloudSyncTagUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryCloudSyncTagUtils"

.field private static final sSyncTagLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/provider/GalleryCloudSyncTagUtils;->sSyncTagLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncTag(Landroid/content/Context;Landroid/accounts/Account;)J
    .locals 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 30
    sget-object v3, Lmiui/provider/GalleryCloudSyncTagUtils;->sSyncTagLock:Ljava/lang/Object;

    monitor-enter v3

    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1}, Lmiui/provider/GalleryCloudSyncTagUtils;->getSyncTagCursorByAccount(Landroid/content/Context;Landroid/accounts/Account;)Landroid/database/Cursor;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 42
    if-eqz v0, :cond_0

    .line 43
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v3

    :goto_0
    return-wide v1

    .line 39
    :cond_1
    const-wide/16 v1, 0x1

    .line 42
    if-eqz v0, :cond_2

    .line 43
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 42
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 43
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static getSyncTagCursorByAccount(Landroid/content/Context;Landroid/accounts/Account;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "syncTag"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountName = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "accountType"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static insertAccountToDB(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 64
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    sget-object v2, Lmiui/provider/GalleryCloudSyncTagUtils;->sSyncTagLock:Ljava/lang/Object;

    monitor-enter v2

    .line 66
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "accountName"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "accountType"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p0, p1, v0}, Lmiui/provider/GalleryCloudSyncTagUtils;->internalUpdateAccount(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;)V

    .line 70
    monitor-exit v2

    .line 72
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static internalUpdateAccount(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "values"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 77
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 79
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1}, Lmiui/provider/GalleryCloudSyncTagUtils;->getSyncTagCursorByAccount(Landroid/content/Context;Landroid/accounts/Account;)Landroid/database/Cursor;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 82
    :cond_0
    const-string v2, "syncTag"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    sget-object v2, Lmiui/provider/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_2
    :goto_1
    return-void

    .line 86
    :cond_3
    :try_start_1
    const-string v2, "syncTag"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 94
    if-eqz v0, :cond_2

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 89
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "syncTag"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 90
    sget-object v2, Lmiui/provider/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_5

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public static setSyncTag(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/Long;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "syncTag"

    .prologue
    .line 56
    sget-object v2, Lmiui/provider/GalleryCloudSyncTagUtils;->sSyncTagLock:Ljava/lang/Object;

    monitor-enter v2

    .line 57
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "syncTag"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    invoke-static {p0, p1, v0}, Lmiui/provider/GalleryCloudSyncTagUtils;->internalUpdateAccount(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;)V

    .line 60
    monitor-exit v2

    .line 61
    return-void

    .line 60
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
