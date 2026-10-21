.class public abstract Lo3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F


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

.method public static a(FFF)F
    .locals 0

    .line 1
    sub-float/2addr p0, p2

    .line 2
    sub-float/2addr p1, p2

    .line 3
    div-float/2addr p0, p1

    .line 4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    sub-float/2addr p1, p0

    .line 7
    return p1
.end method


# virtual methods
.method public getSmallItemSizeMax()F
    .locals 1

    .line 1
    iget v0, p0, Lo3/j;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public getSmallItemSizeMin()F
    .locals 1

    .line 1
    iget v0, p0, Lo3/j;->a:F

    .line 2
    .line 3
    return v0
.end method
