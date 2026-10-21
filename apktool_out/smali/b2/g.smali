.class public final Lb2/g;
.super Lb2/b;
.source "SourceFile"


# instance fields
.field public final x:LV1/e;


# direct methods
.method public constructor <init>(LT1/G;Lb2/e;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lb2/b;-><init>(LT1/G;Lb2/e;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, La2/m;

    .line 5
    .line 6
    const-string v1, "__container"

    .line 7
    .line 8
    iget-object p2, p2, Lb2/e;->a:Ljava/util/List;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, p2, v2}, La2/m;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 12
    .line 13
    .line 14
    new-instance p2, LV1/e;

    .line 15
    .line 16
    invoke-direct {p2, p1, p0, v0}, LV1/e;-><init>(LT1/G;Lb2/b;La2/m;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lb2/g;->x:LV1/e;

    .line 20
    .line 21
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {p2, p1, p1}, LV1/e;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/g;->x:LV1/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LV1/e;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lb2/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lb2/b;->m:Landroid/graphics/Matrix;

    .line 5
    .line 6
    iget-object v0, p0, Lb2/g;->x:LV1/e;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, LV1/e;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public resolveChildKeyPath(LY1/e;ILjava/util/List;LY1/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY1/e;",
            "I",
            "Ljava/util/List<",
            "LY1/e;",
            ">;",
            "LY1/e;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb2/g;->x:LV1/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, LV1/e;->resolveKeyPath(LY1/e;ILjava/util/List;LY1/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
