.class Lmiui/v5/app/SearchMode$FinishActionModeClick;
.super Ljava/lang/Object;
.source "SearchMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/SearchMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishActionModeClick"
.end annotation


# instance fields
.field private final mToken:Lmiui/v5/app/SearchMode$Token;


# direct methods
.method public constructor <init>(Lmiui/v5/app/SearchMode$Token;)V
    .locals 0
    .parameter "token"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/v5/app/SearchMode$FinishActionModeClick;->mToken:Lmiui/v5/app/SearchMode$Token;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/SearchMode$FinishActionModeClick;->mToken:Lmiui/v5/app/SearchMode$Token;

    invoke-virtual {v0}, Lmiui/v5/app/SearchMode$Token;->isAnimationPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/SearchMode$FinishActionModeClick;->mToken:Lmiui/v5/app/SearchMode$Token;

    invoke-virtual {v0}, Lmiui/v5/app/SearchMode$Token;->finish()V

    :cond_0
    return-void
.end method
