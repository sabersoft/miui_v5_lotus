.class public Lmiui/widget/VerticalSeekBar;
.super Lmiui/widget/SeekBar;
.source "VerticalSeekBar.java"


# instance fields
.field private mBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected drawThumb(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v8, 0x42b4

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    iget v8, p0, Lmiui/widget/VerticalSeekBar;->mPaddingTop:I

    int-to-float v8, v8

    iget v9, p0, Lmiui/widget/VerticalSeekBar;->mPaddingBottom:I

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, p0, Lmiui/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lmiui/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lmiui/widget/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lmiui/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .local v5, thumbWidth:I
    iget-object v8, p0, Lmiui/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, thumbHeight:I
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v8

    iget v9, p0, Lmiui/widget/VerticalSeekBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lmiui/widget/VerticalSeekBar;->mPaddingRight:I

    sub-int v7, v8, v9

    .local v7, trackWidth:I
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v8

    iget v9, p0, Lmiui/widget/VerticalSeekBar;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lmiui/widget/VerticalSeekBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    .local v0, available:I
    sub-int/2addr v0, v4

    iget v8, p0, Lmiui/widget/VerticalSeekBar;->mThumbOffset:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getMax()I

    move-result v2

    .local v2, max:I
    if-lez v2, :cond_1

    const/high16 v8, 0x3f80

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v2

    div-float/2addr v9, v10

    sub-float v3, v8, v9

    .local v3, scale:F
    :goto_0
    int-to-float v8, v0

    mul-float/2addr v8, v3

    float-to-int v6, v8

    .local v6, top:I
    sub-int v8, v7, v5

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lmiui/widget/VerticalSeekBar;->mPaddingLeft:I

    add-int v1, v8, v9

    .local v1, left:I
    iget-object v8, p0, Lmiui/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    add-int v9, v1, v5

    add-int v10, v6, v4

    invoke-virtual {v8, v1, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lmiui/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v8, p0, Lmiui/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lmiui/widget/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .end local v0           #available:I
    .end local v1           #left:I
    .end local v2           #max:I
    .end local v3           #scale:F
    .end local v4           #thumbHeight:I
    .end local v5           #thumbWidth:I
    .end local v6           #top:I
    .end local v7           #trackWidth:I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .restart local v0       #available:I
    .restart local v2       #max:I
    .restart local v4       #thumbHeight:I
    .restart local v5       #thumbWidth:I
    .restart local v7       #trackWidth:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/widget/VerticalSeekBar;->mPaddingTop:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    iget v2, p0, Lmiui/widget/VerticalSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x3d4c

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-super {p0, p1}, Lmiui/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-super/range {p0 .. p5}, Lmiui/widget/SeekBar;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lmiui/widget/VerticalSeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/VerticalSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/VerticalSeekBar;->mRealHeight:I

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lmiui/widget/VerticalSeekBar;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/VerticalSeekBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/VerticalSeekBar;->mRealWidth:I

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->updateProgressDrawables()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/VerticalSeekBar;->mPaddingBottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    iget v2, p0, Lmiui/widget/VerticalSeekBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/VerticalSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v1

    iget v2, p0, Lmiui/widget/VerticalSeekBar;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/VerticalSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/VerticalSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-super {p0, p1}, Lmiui/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
