.class public final LG3/D;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:LG3/E;


# direct methods
.method public constructor <init>(LG3/E;)V
    .locals 0

    .line 1
    iput-object p1, p0, LG3/D;->a:LG3/E;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    .line 1
    iget-object p1, p0, LG3/D;->a:LG3/E;

    .line 2
    .line 3
    iget-object v0, p1, LG3/C;->c:LG3/p;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, LG3/C;->d:Landroid/graphics/RectF;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, LG3/C;->d:Landroid/graphics/RectF;

    .line 16
    .line 17
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 18
    .line 19
    float-to-int v3, v1

    .line 20
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 21
    .line 22
    float-to-int v4, v1

    .line 23
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 24
    .line 25
    float-to-int v5, v1

    .line 26
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 27
    .line 28
    float-to-int v6, v0

    .line 29
    iget v7, p1, LG3/E;->g:F

    .line 30
    .line 31
    move-object v2, p2

    .line 32
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
