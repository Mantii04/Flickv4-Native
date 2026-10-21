.class public final Landroidx/mediarouter/app/a0;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/mediarouter/app/a0;->b:I

    .line 2
    .line 3
    iput p3, p0, Landroidx/mediarouter/app/a0;->e:I

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/mediarouter/app/a0;->f:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget p2, p0, Landroidx/mediarouter/app/a0;->b:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/mediarouter/app/a0;->e:I

    .line 4
    .line 5
    sub-int/2addr p2, v0

    .line 6
    int-to-float p2, p2

    .line 7
    mul-float/2addr p2, p1

    .line 8
    float-to-int p1, p2

    .line 9
    add-int/2addr v0, p1

    .line 10
    sget p1, Landroidx/mediarouter/app/m0;->c0:I

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/mediarouter/app/a0;->f:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
