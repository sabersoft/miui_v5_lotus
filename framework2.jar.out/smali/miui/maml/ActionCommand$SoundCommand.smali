.class Lmiui/maml/ActionCommand$SoundCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SoundCommand"


# instance fields
.field private mKeepCur:Z

.field private mLoop:Z

.field private mSound:Ljava/lang/String;

.field private mVolumeExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 865
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 866
    const-string v0, "sound"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    .line 867
    const-string v0, "keepCur"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    .line 868
    const-string v0, "loop"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$SoundCommand;->mLoop:Z

    .line 869
    const-string v0, "volume"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    .line 870
    iget-object v0, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 871
    const-string v0, "ActionCommand"

    const-string v1, "invalid expression in SoundCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    .prologue
    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, volume:F
    iget-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v1, v2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v1

    double-to-float v0, v1

    .line 881
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    new-instance v3, Lmiui/maml/SoundManager$SoundOptions;

    iget-boolean v4, p0, Lmiui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    iget-boolean v5, p0, Lmiui/maml/ActionCommand$SoundCommand;->mLoop:Z

    invoke-direct {v3, v4, v5, v0}, Lmiui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {v1, v2, v3}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V

    .line 882
    return-void
.end method
