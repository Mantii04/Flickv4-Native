.class public Lcom/tuyenmonkey/mkloader/MKLoader;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lp4/a;


# instance fields
.field public final b:Lr4/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/tuyenmonkey/mkloader/R$styleable;->MKLoader:[I

    .line 5
    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget p2, Lcom/tuyenmonkey/mkloader/R$styleable;->MKLoader_mk_type:I

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const-string p2, "ClassicSpinner"

    .line 19
    .line 20
    :cond_0
    invoke-static {p2}, Ls4/a;->generateLoaderView(Ljava/lang/String;)Lr4/g;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/tuyenmonkey/mkloader/MKLoader;->b:Lr4/g;

    .line 25
    .line 26
    sget v0, Lcom/tuyenmonkey/mkloader/R$styleable;->MKLoader_mk_color:I

    .line 27
    .line 28
    const-string v1, "#ffffff"

    .line 29
    .line 30
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p2, v0}, Lr4/g;->setColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/tuyenmonkey/mkloader/MKLoader;->b:Lr4/g;

    .line 42
    .line 43
    invoke-virtual {p2, p0}, Lr4/g;->setInvalidateListener(Lp4/a;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tuyenmonkey/mkloader/MKLoader;->b:Lr4/g;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lr4/g;->draw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    iget-object p2, p1, Lcom/tuyenmonkey/mkloader/MKLoader;->b:Lr4/g;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    invoke-virtual {p2, p3, p4}, Lr4/g;->setSize(II)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p1, Lcom/tuyenmonkey/mkloader/MKLoader;->b:Lr4/g;

    .line 19
    .line 20
    invoke-virtual {p2}, Lr4/g;->initializeObjects()V

    .line 21
    .line 22
    .line 23
    iget-object p2, p1, Lcom/tuyenmonkey/mkloader/MKLoader;->b:Lr4/g;

    .line 24
    .line 25
    invoke-virtual {p2}, Lr4/g;->setUpAnimation()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tuyenmonkey/mkloader/MKLoader;->b:Lr4/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr4/g;->getDesiredWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/tuyenmonkey/mkloader/MKLoader;->b:Lr4/g;

    .line 12
    .line 13
    invoke-virtual {v0}, Lr4/g;->getDesiredHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public reDraw()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
