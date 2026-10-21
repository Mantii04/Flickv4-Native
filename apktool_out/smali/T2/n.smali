.class public final LT2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/b;


# instance fields
.field public final a:Lt5/a;

.field public final b:Lt5/a;


# direct methods
.method public constructor <init>(Lt5/a;Lt5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iput-object p1, p0, LT2/n;->a:Lt5/a;

    .line 5
    .line 6
    iput-object p2, p0, LT2/n;->b:Lt5/a;

    .line 7
    .line 8
    return-void
.end method

.method public static create(Lt5/a;Lt5/a;)LT2/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            "Lt5/a;",
            ")",
            "LT2/n;"
        }
    .end annotation

    .line 1
    new-instance v0, LT2/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, LT2/n;-><init>(Lt5/a;Lt5/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/Object;)LT2/m;
    .locals 1

    .line 1
    new-instance v0, LT2/m;

    .line 2
    .line 3
    check-cast p1, LT2/k;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, LT2/m;-><init>(Landroid/content/Context;LT2/k;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public get()LT2/m;
    .locals 2

    .line 2
    iget-object v0, p0, LT2/n;->a:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LT2/n;->b:Lt5/a;

    invoke-interface {v1}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, LT2/n;->newInstance(Landroid/content/Context;Ljava/lang/Object;)LT2/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LT2/n;->get()LT2/m;

    move-result-object v0

    return-object v0
.end method
