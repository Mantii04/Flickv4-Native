.class public final LY2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/b;


# instance fields
.field public final a:Lt5/a;

.field public final b:Lt5/a;

.field public final c:Lt5/a;

.field public final d:Lt5/a;


# direct methods
.method public constructor <init>(Lt5/a;Lt5/a;Lt5/a;Lt5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iput-object p1, p0, LY2/f;->a:Lt5/a;

    .line 5
    .line 6
    iput-object p2, p0, LY2/f;->b:Lt5/a;

    .line 7
    .line 8
    iput-object p3, p0, LY2/f;->c:Lt5/a;

    .line 9
    .line 10
    iput-object p4, p0, LY2/f;->d:Lt5/a;

    .line 11
    .line 12
    return-void
.end method

.method public static create(Lt5/a;Lt5/a;Lt5/a;Lt5/a;)LY2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            ")",
            "LY2/f;"
        }
    .end annotation

    .line 1
    new-instance v0, LY2/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, LY2/f;-><init>(Lt5/a;Lt5/a;Lt5/a;Lt5/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static workScheduler(Landroid/content/Context;La3/d;LZ2/h;Lc3/a;)LZ2/q;
    .locals 0

    .line 1
    new-instance p3, LZ2/d;

    .line 2
    .line 3
    invoke-direct {p3, p0, p1, p2}, LZ2/d;-><init>(Landroid/content/Context;La3/d;LZ2/h;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    .line 8
    invoke-static {p3, p0}, LU2/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, LZ2/q;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public get()LZ2/q;
    .locals 4

    .line 2
    iget-object v0, p0, LY2/f;->a:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LY2/f;->b:Lt5/a;

    invoke-interface {v1}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/d;

    iget-object v2, p0, LY2/f;->c:Lt5/a;

    invoke-interface {v2}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LZ2/h;

    iget-object v3, p0, LY2/f;->d:Lt5/a;

    invoke-interface {v3}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc3/a;

    invoke-static {v0, v1, v2, v3}, LY2/f;->workScheduler(Landroid/content/Context;La3/d;LZ2/h;Lc3/a;)LZ2/q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LY2/f;->get()LZ2/q;

    move-result-object v0

    return-object v0
.end method
