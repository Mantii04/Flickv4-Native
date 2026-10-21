.class public final LZ2/n;
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

.field public final f:Lt5/a;

.field public final g:Lt5/a;

.field public final h:Lt5/a;

.field public final i:Lt5/a;


# direct methods
.method public constructor <init>(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
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
    iput-object p1, p0, LZ2/n;->a:Lt5/a;

    .line 5
    .line 6
    iput-object p2, p0, LZ2/n;->b:Lt5/a;

    .line 7
    .line 8
    iput-object p3, p0, LZ2/n;->c:Lt5/a;

    .line 9
    .line 10
    iput-object p4, p0, LZ2/n;->d:Lt5/a;

    .line 11
    .line 12
    iput-object p5, p0, LZ2/n;->e:Lt5/a;

    .line 13
    .line 14
    iput-object p6, p0, LZ2/n;->f:Lt5/a;

    .line 15
    .line 16
    iput-object p7, p0, LZ2/n;->g:Lt5/a;

    .line 17
    .line 18
    iput-object p8, p0, LZ2/n;->h:Lt5/a;

    .line 19
    .line 20
    iput-object p9, p0, LZ2/n;->i:Lt5/a;

    .line 21
    .line 22
    return-void
.end method

.method public static create(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)LZ2/n;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            ")",
            "LZ2/n;"
        }
    .end annotation

    .line 1
    new-instance v0, LZ2/n;

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
    move-object v6, p5

    .line 9
    move-object/from16 v7, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    move-object/from16 v9, p8

    .line 14
    .line 15
    invoke-direct/range {v0 .. v9}, LZ2/n;-><init>(Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;Lt5/a;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;LT2/f;La3/d;LZ2/q;Ljava/util/concurrent/Executor;Lb3/b;Lc3/a;Lc3/a;La3/c;)LZ2/m;
    .locals 10

    .line 1
    new-instance v0, LZ2/m;

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
    move-object v6, p5

    .line 9
    move-object/from16 v7, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    move-object/from16 v9, p8

    .line 14
    .line 15
    invoke-direct/range {v0 .. v9}, LZ2/m;-><init>(Landroid/content/Context;LT2/f;La3/d;LZ2/q;Ljava/util/concurrent/Executor;Lb3/b;Lc3/a;Lc3/a;La3/c;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public get()LZ2/m;
    .locals 10

    .line 2
    iget-object v0, p0, LZ2/n;->a:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, LZ2/n;->b:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LT2/f;

    iget-object v0, p0, LZ2/n;->c:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, La3/d;

    iget-object v0, p0, LZ2/n;->d:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LZ2/q;

    iget-object v0, p0, LZ2/n;->e:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, LZ2/n;->f:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lb3/b;

    iget-object v0, p0, LZ2/n;->g:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lc3/a;

    iget-object v0, p0, LZ2/n;->h:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lc3/a;

    iget-object v0, p0, LZ2/n;->i:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, La3/c;

    invoke-static/range {v1 .. v9}, LZ2/n;->newInstance(Landroid/content/Context;LT2/f;La3/d;LZ2/q;Ljava/util/concurrent/Executor;Lb3/b;Lc3/a;Lc3/a;La3/c;)LZ2/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LZ2/n;->get()LZ2/m;

    move-result-object v0

    return-object v0
.end method
