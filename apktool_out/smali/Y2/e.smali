.class public final LY2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/b;


# instance fields
.field public final a:Lt5/a;


# direct methods
.method public constructor <init>(Lt5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LY2/e;->a:Lt5/a;

    .line 5
    .line 6
    return-void
.end method

.method public static config(Lc3/a;)LZ2/h;
    .locals 1

    .line 1
    invoke-static {p0}, LZ2/h;->getDefault(Lc3/a;)LZ2/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 6
    .line 7
    invoke-static {p0, v0}, LU2/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, LZ2/h;

    .line 12
    .line 13
    return-object p0
.end method

.method public static create(Lt5/a;)LY2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            ")",
            "LY2/e;"
        }
    .end annotation

    .line 1
    new-instance v0, LY2/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LY2/e;-><init>(Lt5/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public get()LZ2/h;
    .locals 1

    .line 2
    iget-object v0, p0, LY2/e;->a:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/a;

    invoke-static {v0}, LY2/e;->config(Lc3/a;)LZ2/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LY2/e;->get()LZ2/h;

    move-result-object v0

    return-object v0
.end method
