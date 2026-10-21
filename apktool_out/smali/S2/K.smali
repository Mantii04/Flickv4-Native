.class public final LS2/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/b;


# instance fields
.field public final a:Lt5/a;

.field public final b:Lt5/a;

.field public final c:Lt5/a;

.field public final d:Lt5/a;

.field public final e:Lt5/a;


# direct methods
.method public constructor <init>(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS2/K;->a:Lt5/a;

    .line 5
    .line 6
    iput-object p2, p0, LS2/K;->b:Lt5/a;

    .line 7
    .line 8
    iput-object p3, p0, LS2/K;->c:Lt5/a;

    .line 9
    .line 10
    iput-object p4, p0, LS2/K;->d:Lt5/a;

    .line 11
    .line 12
    iput-object p5, p0, LS2/K;->e:Lt5/a;

    .line 13
    .line 14
    return-void
.end method

.method public static create(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)LS2/K;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            ")",
            "LS2/K;"
        }
    .end annotation

    .line 1
    new-instance v0, LS2/K;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, LS2/K;-><init>(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static newInstance(Lc3/a;Lc3/a;LY2/d;LZ2/m;LZ2/o;)LS2/H;
    .locals 6

    .line 1
    new-instance v0, LS2/H;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, LS2/H;-><init>(Lc3/a;Lc3/a;LY2/d;LZ2/m;LZ2/o;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public get()LS2/H;
    .locals 5

    .line 2
    iget-object v0, p0, LS2/K;->a:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/a;

    iget-object v1, p0, LS2/K;->b:Lt5/a;

    invoke-interface {v1}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/a;

    iget-object v2, p0, LS2/K;->c:Lt5/a;

    invoke-interface {v2}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/d;

    iget-object v3, p0, LS2/K;->d:Lt5/a;

    invoke-interface {v3}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZ2/m;

    iget-object v4, p0, LS2/K;->e:Lt5/a;

    invoke-interface {v4}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LZ2/o;

    invoke-static {v0, v1, v2, v3, v4}, LS2/K;->newInstance(Lc3/a;Lc3/a;LY2/d;LZ2/m;LZ2/o;)LS2/H;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LS2/K;->get()LS2/H;

    move-result-object v0

    return-object v0
.end method
