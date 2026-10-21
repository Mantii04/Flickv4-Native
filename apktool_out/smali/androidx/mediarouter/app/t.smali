.class public final Landroidx/mediarouter/app/t;
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
    iput p2, p0, Landroidx/mediarouter/app/t;->b:I

    .line 2
    .line 3
    iput p3, p0, Landroidx/mediarouter/app/t;->e:I

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/mediarouter/app/t;->f:Landroid/view/View;

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
    iget p2, p0, Landroidx/mediarouter/app/t;->e:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/mediarouter/app/t;->b:I

    .line 4
    .line 5
    sub-int p2, v0, p2

    .line 6
    .line 7
    int-to-float p2, p2

    .line 8
    mul-float/2addr p2, p1

    .line 9
    float-to-int p1, p2

    .line 10
    sub-int/2addr v0, p1

    .line 11
    iget-object p1, p0, Landroidx/mediarouter/app/t;->f:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/mediarouter/app/D;->k(Landroid/view/View;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
