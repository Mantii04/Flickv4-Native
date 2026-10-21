.class public abstract LG3/d;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public abstract getCornerPath(LG3/A;FFF)V
.end method

.method public getCornerPath(LG3/A;FFLandroid/graphics/RectF;LG3/c;)V
    .locals 0

    .line 1
    invoke-interface {p5, p4}, LG3/c;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, LG3/d;->getCornerPath(LG3/A;FFF)V

    return-void
.end method
