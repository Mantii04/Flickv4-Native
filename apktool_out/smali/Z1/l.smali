.class public final LZ1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# instance fields
.field public final a:LZ1/e;

.field public final b:LZ1/m;

.field public final c:LZ1/g;

.field public final d:LZ1/b;

.field public final e:LZ1/d;

.field public final f:LZ1/b;

.field public final g:LZ1/b;

.field public final h:LZ1/b;

.field public final i:LZ1/b;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, LZ1/l;-><init>(LZ1/e;LZ1/m;LZ1/g;LZ1/b;LZ1/d;LZ1/b;LZ1/b;LZ1/b;LZ1/b;)V

    return-void
.end method

.method public constructor <init>(LZ1/e;LZ1/m;LZ1/g;LZ1/b;LZ1/d;LZ1/b;LZ1/b;LZ1/b;LZ1/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZ1/e;",
            "LZ1/m;",
            "LZ1/g;",
            "LZ1/b;",
            "LZ1/d;",
            "LZ1/b;",
            "LZ1/b;",
            "LZ1/b;",
            "LZ1/b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LZ1/l;->a:LZ1/e;

    .line 4
    iput-object p2, p0, LZ1/l;->b:LZ1/m;

    .line 5
    iput-object p3, p0, LZ1/l;->c:LZ1/g;

    .line 6
    iput-object p4, p0, LZ1/l;->d:LZ1/b;

    .line 7
    iput-object p5, p0, LZ1/l;->e:LZ1/d;

    .line 8
    iput-object p6, p0, LZ1/l;->h:LZ1/b;

    .line 9
    iput-object p7, p0, LZ1/l;->i:LZ1/b;

    .line 10
    iput-object p8, p0, LZ1/l;->f:LZ1/b;

    .line 11
    iput-object p9, p0, LZ1/l;->g:LZ1/b;

    return-void
.end method


# virtual methods
.method public createAnimation()LW1/t;
    .locals 1

    .line 1
    new-instance v0, LW1/t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LW1/t;-><init>(LZ1/l;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getAnchorPoint()LZ1/e;
    .locals 1

    .line 1
    iget-object v0, p0, LZ1/l;->a:LZ1/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndOpacity()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, LZ1/l;->i:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpacity()LZ1/d;
    .locals 1

    .line 1
    iget-object v0, p0, LZ1/l;->e:LZ1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosition()LZ1/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZ1/m;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LZ1/l;->b:LZ1/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRotation()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, LZ1/l;->d:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScale()LZ1/g;
    .locals 1

    .line 1
    iget-object v0, p0, LZ1/l;->c:LZ1/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSkew()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, LZ1/l;->f:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSkewAngle()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, LZ1/l;->g:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartOpacity()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, LZ1/l;->h:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public toContent(LT1/G;Lb2/b;)LV1/d;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
