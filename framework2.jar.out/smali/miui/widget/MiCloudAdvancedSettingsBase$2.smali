.class Lmiui/widget/MiCloudAdvancedSettingsBase$2;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;->handleIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$2;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 233
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$2;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->startActivate()V
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$300(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    .line 234
    return-void
.end method
