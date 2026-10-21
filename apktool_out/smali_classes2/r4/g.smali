.class public abstract Lr4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroid/graphics/PointF;

.field public e:Lp4/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public getDesiredHeight()I
    .locals 1

    .line 1
    const/16 v0, 0x96

    .line 2
    .line 3
    return v0
.end method

.method public getDesiredWidth()I
    .locals 1

    .line 1
    const/16 v0, 0x96

    .line 2
    .line 3
    return v0
.end method

.method public abstract initializeObjects()V
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr4/g;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public setInvalidateListener(Lp4/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr4/g;->e:Lp4/a;

    .line 2
    .line 3
    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 1
    iput p1, p0, Lr4/g;->b:I

    .line 2
    .line 3
    iput p2, p0, Lr4/g;->c:I

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/PointF;

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    .line 10
    div-float/2addr p1, v1

    .line 11
    int-to-float p2, p2

    .line 12
    div-float/2addr p2, v1

    .line 13
    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 17
    .line 18
    return-void
.end method

.method public abstract setUpAnimation()V
.end method
