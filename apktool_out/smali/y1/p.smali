.class public final Ly1/p;
.super Ly1/q;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Ljava/util/ArrayList;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public final j:Landroid/graphics/Matrix;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly1/p;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly1/p;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ly1/p;->c:F

    .line 5
    iput v0, p0, Ly1/p;->d:F

    .line 6
    iput v0, p0, Ly1/p;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, p0, Ly1/p;->f:F

    .line 8
    iput v1, p0, Ly1/p;->g:F

    .line 9
    iput v0, p0, Ly1/p;->h:F

    .line 10
    iput v0, p0, Ly1/p;->i:F

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly1/p;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Ly1/p;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ly1/p;Lp/g;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/p;",
            "Lp/g;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly1/p;->a:Landroid/graphics/Matrix;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly1/p;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Ly1/p;->c:F

    .line 17
    iput v0, p0, Ly1/p;->d:F

    .line 18
    iput v0, p0, Ly1/p;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    iput v1, p0, Ly1/p;->f:F

    .line 20
    iput v1, p0, Ly1/p;->g:F

    .line 21
    iput v0, p0, Ly1/p;->h:F

    .line 22
    iput v0, p0, Ly1/p;->i:F

    .line 23
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Ly1/p;->j:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    .line 24
    iput-object v3, p0, Ly1/p;->k:Ljava/lang/String;

    .line 25
    iget v3, p1, Ly1/p;->c:F

    iput v3, p0, Ly1/p;->c:F

    .line 26
    iget v3, p1, Ly1/p;->d:F

    iput v3, p0, Ly1/p;->d:F

    .line 27
    iget v3, p1, Ly1/p;->e:F

    iput v3, p0, Ly1/p;->e:F

    .line 28
    iget v3, p1, Ly1/p;->f:F

    iput v3, p0, Ly1/p;->f:F

    .line 29
    iget v3, p1, Ly1/p;->g:F

    iput v3, p0, Ly1/p;->g:F

    .line 30
    iget v3, p1, Ly1/p;->h:F

    iput v3, p0, Ly1/p;->h:F

    .line 31
    iget v3, p1, Ly1/p;->i:F

    iput v3, p0, Ly1/p;->i:F

    .line 32
    iget-object v3, p1, Ly1/p;->k:Ljava/lang/String;

    iput-object v3, p0, Ly1/p;->k:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {p2, v3, p0}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    iget-object v3, p1, Ly1/p;->j:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 35
    iget-object p1, p1, Ly1/p;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 36
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 37
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 38
    instance-of v4, v3, Ly1/p;

    if-eqz v4, :cond_1

    .line 39
    check-cast v3, Ly1/p;

    .line 40
    iget-object v4, p0, Ly1/p;->b:Ljava/util/ArrayList;

    new-instance v5, Ly1/p;

    invoke-direct {v5, v3, p2}, Ly1/p;-><init>(Ly1/p;Lp/g;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 41
    :cond_1
    instance-of v4, v3, Ly1/o;

    if-eqz v4, :cond_2

    .line 42
    new-instance v4, Ly1/o;

    check-cast v3, Ly1/o;

    .line 43
    invoke-direct {v4, v3}, Ly1/r;-><init>(Ly1/r;)V

    .line 44
    iput v0, v4, Ly1/o;->e:F

    .line 45
    iput v1, v4, Ly1/o;->g:F

    .line 46
    iput v1, v4, Ly1/o;->h:F

    .line 47
    iput v0, v4, Ly1/o;->i:F

    .line 48
    iput v1, v4, Ly1/o;->j:F

    .line 49
    iput v0, v4, Ly1/o;->k:F

    .line 50
    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Ly1/o;->l:Landroid/graphics/Paint$Cap;

    .line 51
    sget-object v5, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Ly1/o;->m:Landroid/graphics/Paint$Join;

    const/high16 v5, 0x40800000    # 4.0f

    .line 52
    iput v5, v4, Ly1/o;->n:F

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    iget-object v5, v3, Ly1/o;->d:LC/d;

    iput-object v5, v4, Ly1/o;->d:LC/d;

    .line 55
    iget v5, v3, Ly1/o;->e:F

    iput v5, v4, Ly1/o;->e:F

    .line 56
    iget v5, v3, Ly1/o;->g:F

    iput v5, v4, Ly1/o;->g:F

    .line 57
    iget-object v5, v3, Ly1/o;->f:LC/d;

    iput-object v5, v4, Ly1/o;->f:LC/d;

    .line 58
    iget v5, v3, Ly1/r;->c:I

    iput v5, v4, Ly1/r;->c:I

    .line 59
    iget v5, v3, Ly1/o;->h:F

    iput v5, v4, Ly1/o;->h:F

    .line 60
    iget v5, v3, Ly1/o;->i:F

    iput v5, v4, Ly1/o;->i:F

    .line 61
    iget v5, v3, Ly1/o;->j:F

    iput v5, v4, Ly1/o;->j:F

    .line 62
    iget v5, v3, Ly1/o;->k:F

    iput v5, v4, Ly1/o;->k:F

    .line 63
    iget-object v5, v3, Ly1/o;->l:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Ly1/o;->l:Landroid/graphics/Paint$Cap;

    .line 64
    iget-object v5, v3, Ly1/o;->m:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Ly1/o;->m:Landroid/graphics/Paint$Join;

    .line 65
    iget v3, v3, Ly1/o;->n:F

    iput v3, v4, Ly1/o;->n:F

    goto :goto_1

    .line 66
    :cond_2
    instance-of v4, v3, Ly1/n;

    if-eqz v4, :cond_4

    .line 67
    new-instance v4, Ly1/n;

    check-cast v3, Ly1/n;

    .line 68
    invoke-direct {v4, v3}, Ly1/r;-><init>(Ly1/r;)V

    .line 69
    :goto_1
    iget-object v3, p0, Ly1/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v3, v4, Ly1/r;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {p2, v3, v4}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 72
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/p;->j:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Ly1/p;->d:F

    .line 7
    .line 8
    neg-float v1, v1

    .line 9
    iget v2, p0, Ly1/p;->e:F

    .line 10
    .line 11
    neg-float v2, v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13
    .line 14
    .line 15
    iget v1, p0, Ly1/p;->f:F

    .line 16
    .line 17
    iget v2, p0, Ly1/p;->g:F

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 20
    .line 21
    .line 22
    iget v1, p0, Ly1/p;->c:F

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 26
    .line 27
    .line 28
    iget v1, p0, Ly1/p;->h:F

    .line 29
    .line 30
    iget v2, p0, Ly1/p;->d:F

    .line 31
    .line 32
    add-float/2addr v1, v2

    .line 33
    iget v2, p0, Ly1/p;->i:F

    .line 34
    .line 35
    iget v3, p0, Ly1/p;->e:F

    .line 36
    .line 37
    add-float/2addr v2, v3

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/p;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/p;->j:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1
    sget-object v0, Ly1/a;->b:[I

    .line 2
    .line 3
    invoke-static {p1, p3, p2, v0}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p2, p0, Ly1/p;->c:F

    .line 8
    .line 9
    const-string p3, "rotation"

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-static {p1, p4, p3, v0, p2}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iput p2, p0, Ly1/p;->c:F

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    iget p3, p0, Ly1/p;->d:F

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Ly1/p;->d:F

    .line 26
    .line 27
    const/4 p2, 0x2

    .line 28
    iget p3, p0, Ly1/p;->e:F

    .line 29
    .line 30
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iput p2, p0, Ly1/p;->e:F

    .line 35
    .line 36
    iget p2, p0, Ly1/p;->f:F

    .line 37
    .line 38
    const-string p3, "scaleX"

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-static {p1, p4, p3, v0, p2}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iput p2, p0, Ly1/p;->f:F

    .line 46
    .line 47
    iget p2, p0, Ly1/p;->g:F

    .line 48
    .line 49
    const-string p3, "scaleY"

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    invoke-static {p1, p4, p3, v0, p2}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iput p2, p0, Ly1/p;->g:F

    .line 57
    .line 58
    iget p2, p0, Ly1/p;->h:F

    .line 59
    .line 60
    const-string p3, "translateX"

    .line 61
    .line 62
    const/4 v0, 0x6

    .line 63
    invoke-static {p1, p4, p3, v0, p2}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput p2, p0, Ly1/p;->h:F

    .line 68
    .line 69
    iget p2, p0, Ly1/p;->i:F

    .line 70
    .line 71
    const-string p3, "translateY"

    .line 72
    .line 73
    const/4 v0, 0x7

    .line 74
    invoke-static {p1, p4, p3, v0, p2}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    iput p2, p0, Ly1/p;->i:F

    .line 79
    .line 80
    const/4 p2, 0x0

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-eqz p2, :cond_0

    .line 86
    .line 87
    iput-object p2, p0, Ly1/p;->k:Ljava/lang/String;

    .line 88
    .line 89
    :cond_0
    invoke-virtual {p0}, Ly1/p;->a()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public isStateful()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Ly1/p;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ge v1, v3, :cond_1

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ly1/q;

    .line 16
    .line 17
    invoke-virtual {v2}, Ly1/q;->isStateful()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v0
.end method

.method public onStateChanged([I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Ly1/p;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ge v0, v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ly1/q;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ly1/q;->onStateChanged([I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    or-int/2addr v1, v2

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return v1
.end method

.method public setPivotX(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->d:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Ly1/p;->d:F

    .line 8
    .line 9
    invoke-virtual {p0}, Ly1/p;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->e:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Ly1/p;->e:F

    .line 8
    .line 9
    invoke-virtual {p0}, Ly1/p;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->c:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Ly1/p;->c:F

    .line 8
    .line 9
    invoke-virtual {p0}, Ly1/p;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->f:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Ly1/p;->f:F

    .line 8
    .line 9
    invoke-virtual {p0}, Ly1/p;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->g:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Ly1/p;->g:F

    .line 8
    .line 9
    invoke-virtual {p0}, Ly1/p;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->h:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Ly1/p;->h:F

    .line 8
    .line 9
    invoke-virtual {p0}, Ly1/p;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly1/p;->i:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Ly1/p;->i:F

    .line 8
    .line 9
    invoke-virtual {p0}, Ly1/p;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
