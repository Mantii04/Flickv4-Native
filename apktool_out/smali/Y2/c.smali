.class public final LY2/c;
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
    iput-object p1, p0, LY2/c;->a:Lt5/a;

    .line 5
    .line 6
    iput-object p2, p0, LY2/c;->b:Lt5/a;

    .line 7
    .line 8
    iput-object p3, p0, LY2/c;->c:Lt5/a;

    .line 9
    .line 10
    iput-object p4, p0, LY2/c;->d:Lt5/a;

    .line 11
    .line 12
    iput-object p5, p0, LY2/c;->e:Lt5/a;

    .line 13
    .line 14
    return-void
.end method

.method public static create(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)LY2/c;
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
            "LY2/c;"
        }
    .end annotation

    .line 1
    new-instance v0, LY2/c;

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
    invoke-direct/range {v0 .. v5}, LY2/c;-><init>(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static newInstance(Ljava/util/concurrent/Executor;LT2/f;LZ2/q;La3/d;Lb3/b;)LY2/b;
    .locals 6

    .line 1
    new-instance v0, LY2/b;

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
    invoke-direct/range {v0 .. v5}, LY2/b;-><init>(Ljava/util/concurrent/Executor;LT2/f;LZ2/q;La3/d;Lb3/b;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public get()LY2/b;
    .locals 5

    .line 2
    iget-object v0, p0, LY2/c;->a:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, LY2/c;->b:Lt5/a;

    invoke-interface {v1}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT2/f;

    iget-object v2, p0, LY2/c;->c:Lt5/a;

    invoke-interface {v2}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LZ2/q;

    iget-object v3, p0, LY2/c;->d:Lt5/a;

    invoke-interface {v3}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/d;

    iget-object v4, p0, LY2/c;->e:Lt5/a;

    invoke-interface {v4}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/b;

    invoke-static {v0, v1, v2, v3, v4}, LY2/c;->newInstance(Ljava/util/concurrent/Executor;LT2/f;LZ2/q;La3/d;Lb3/b;)LY2/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LY2/c;->get()LY2/b;

    move-result-object v0

    return-object v0
.end method
