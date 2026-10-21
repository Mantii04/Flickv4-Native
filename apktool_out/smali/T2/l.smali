.class public final LT2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/b;


# instance fields
.field public final a:Lt5/a;

.field public final b:Lt5/a;

.field public final c:Lt5/a;


# direct methods
.method public constructor <init>(Lt5/a;Lt5/a;Lt5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iput-object p1, p0, LT2/l;->a:Lt5/a;

    .line 5
    .line 6
    iput-object p2, p0, LT2/l;->b:Lt5/a;

    .line 7
    .line 8
    iput-object p3, p0, LT2/l;->c:Lt5/a;

    .line 9
    .line 10
    return-void
.end method

.method public static create(Lt5/a;Lt5/a;Lt5/a;)LT2/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            ")",
            "LT2/l;"
        }
    .end annotation

    .line 1
    new-instance v0, LT2/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, LT2/l;-><init>(Lt5/a;Lt5/a;Lt5/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lc3/a;Lc3/a;)LT2/k;
    .locals 1

    .line 1
    new-instance v0, LT2/k;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, LT2/k;-><init>(Landroid/content/Context;Lc3/a;Lc3/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public get()LT2/k;
    .locals 3

    .line 2
    iget-object v0, p0, LT2/l;->a:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LT2/l;->b:Lt5/a;

    invoke-interface {v1}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/a;

    iget-object v2, p0, LT2/l;->c:Lt5/a;

    invoke-interface {v2}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc3/a;

    invoke-static {v0, v1, v2}, LT2/l;->newInstance(Landroid/content/Context;Lc3/a;Lc3/a;)LT2/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LT2/l;->get()LT2/k;

    move-result-object v0

    return-object v0
.end method
