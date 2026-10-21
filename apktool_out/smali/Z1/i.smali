.class public final LZ1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ1/m;


# instance fields
.field public final a:LZ1/b;

.field public final b:LZ1/b;


# direct methods
.method public constructor <init>(LZ1/b;LZ1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ1/i;->a:LZ1/b;

    .line 5
    .line 6
    iput-object p2, p0, LZ1/i;->b:LZ1/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public createAnimation()LW1/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LW1/f;"
        }
    .end annotation

    .line 1
    new-instance v0, LW1/r;

    .line 2
    .line 3
    iget-object v1, p0, LZ1/i;->a:LZ1/b;

    .line 4
    .line 5
    invoke-virtual {v1}, LZ1/b;->createAnimation()LW1/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, LZ1/i;->b:LZ1/b;

    .line 10
    .line 11
    invoke-virtual {v2}, LZ1/b;->createAnimation()LW1/f;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, LW1/r;-><init>(LW1/f;LW1/f;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg2/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public isStatic()Z
    .locals 1

    .line 1
    iget-object v0, p0, LZ1/i;->a:LZ1/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LZ1/b;->isStatic()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LZ1/i;->b:LZ1/b;

    .line 10
    .line 11
    invoke-virtual {v0}, LZ1/b;->isStatic()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method
