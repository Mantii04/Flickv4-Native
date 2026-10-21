.class public final LG3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/r;


# instance fields
.field public final synthetic a:LG3/j;


# direct methods
.method public constructor <init>(LG3/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LG3/g;->a:LG3/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCornerPathCreated(LG3/A;Landroid/graphics/Matrix;I)V
    .locals 3

    .line 1
    iget-object v0, p0, LG3/g;->a:LG3/j;

    .line 2
    .line 3
    iget-object v1, v0, LG3/j;->j:Ljava/util/BitSet;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, p3, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 10
    .line 11
    .line 12
    iget v1, p1, LG3/A;->f:F

    .line 13
    .line 14
    invoke-virtual {p1, v1}, LG3/A;->a(F)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroid/graphics/Matrix;

    .line 18
    .line 19
    invoke-direct {v1, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object p1, p1, LG3/A;->h:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, LG3/t;

    .line 30
    .line 31
    invoke-direct {p1, p2, v1}, LG3/t;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, v0, LG3/j;->e:[LG3/z;

    .line 35
    .line 36
    aput-object p1, p2, p3

    .line 37
    .line 38
    return-void
.end method

.method public onEdgePathCreated(LG3/A;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    iget-object v0, p0, LG3/g;->a:LG3/j;

    .line 2
    .line 3
    iget-object v1, v0, LG3/j;->j:Ljava/util/BitSet;

    .line 4
    .line 5
    add-int/lit8 v2, p3, 0x4

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 12
    .line 13
    .line 14
    iget v1, p1, LG3/A;->f:F

    .line 15
    .line 16
    invoke-virtual {p1, v1}, LG3/A;->a(F)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/graphics/Matrix;

    .line 20
    .line 21
    invoke-direct {v1, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object p1, p1, LG3/A;->h:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, LG3/t;

    .line 32
    .line 33
    invoke-direct {p1, p2, v1}, LG3/t;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, v0, LG3/j;->f:[LG3/z;

    .line 37
    .line 38
    aput-object p1, p2, p3

    .line 39
    .line 40
    return-void
.end method
