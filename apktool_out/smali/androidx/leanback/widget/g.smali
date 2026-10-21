.class public final Landroidx/leanback/widget/g;
.super Landroidx/leanback/widget/f;
.source "SourceFile"


# instance fields
.field public final b:F

.field public final e:F

.field public final synthetic f:Landroidx/leanback/widget/k;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/k;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/g;->f:Landroidx/leanback/widget/k;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroidx/leanback/widget/g;->b:F

    .line 7
    .line 8
    sub-float/2addr p3, p2

    .line 9
    iput p3, p0, Landroidx/leanback/widget/g;->e:F

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget p2, p0, Landroidx/leanback/widget/g;->e:F

    .line 2
    .line 3
    mul-float/2addr p1, p2

    .line 4
    iget p2, p0, Landroidx/leanback/widget/g;->b:F

    .line 5
    .line 6
    add-float/2addr p1, p2

    .line 7
    iget-object p2, p0, Landroidx/leanback/widget/g;->f:Landroidx/leanback/widget/k;

    .line 8
    .line 9
    iput p1, p2, Landroidx/leanback/widget/k;->x:F

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object v0, p2, Landroidx/leanback/widget/k;->m:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ge p1, v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p2, Landroidx/leanback/widget/k;->m:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/View;

    .line 27
    .line 28
    iget v1, p2, Landroidx/leanback/widget/k;->x:F

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method
