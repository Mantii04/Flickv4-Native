.class public final LV1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV1/n;
.implements LW1/a;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Z

.field public final c:LT1/G;

.field public final d:LW1/f;

.field public e:Z

.field public final f:LV1/c;


# direct methods
.method public constructor <init>(LT1/G;Lb2/b;La2/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LV1/r;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, LV1/c;

    .line 12
    .line 13
    invoke-direct {v0}, LV1/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LV1/r;->f:LV1/c;

    .line 17
    .line 18
    invoke-virtual {p3}, La2/n;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, La2/n;->isHidden()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput-boolean v0, p0, LV1/r;->b:Z

    .line 26
    .line 27
    iput-object p1, p0, LV1/r;->c:LT1/G;

    .line 28
    .line 29
    invoke-virtual {p3}, La2/n;->getShapePath()LZ1/h;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, LZ1/h;->createAnimation()LW1/f;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, LV1/r;->d:LW1/f;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 1
    iget-boolean v0, p0, LV1/r;->e:Z

    .line 2
    .line 3
    iget-object v1, p0, LV1/r;->a:Landroid/graphics/Path;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, LV1/r;->b:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-boolean v2, p0, LV1/r;->e:Z

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    iget-object v0, p0, LV1/r;->d:LW1/f;

    .line 20
    .line 21
    invoke-virtual {v0}, LW1/f;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/graphics/Path;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, LV1/r;->f:LV1/c;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, LV1/c;->apply(Landroid/graphics/Path;)V

    .line 38
    .line 39
    .line 40
    iput-boolean v2, p0, LV1/r;->e:Z

    .line 41
    .line 42
    return-object v1
.end method

.method public onValueChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LV1/r;->e:Z

    .line 3
    .line 4
    iget-object v0, p0, LV1/r;->c:LT1/G;

    .line 5
    .line 6
    invoke-virtual {v0}, LT1/G;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LV1/d;",
            ">;",
            "Ljava/util/List<",
            "LV1/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p2, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, LV1/d;

    .line 13
    .line 14
    instance-of v1, v0, LV1/t;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, LV1/t;

    .line 19
    .line 20
    iget-object v1, v0, LV1/t;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 21
    .line 22
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->b:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 23
    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, LV1/r;->f:LV1/c;

    .line 27
    .line 28
    iget-object v1, v1, LV1/c;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, LV1/t;->a(LW1/a;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method
