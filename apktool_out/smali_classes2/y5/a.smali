.class public abstract Ly5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly5/i;


# instance fields
.field public final b:Ly5/j;


# direct methods
.method public constructor <init>(Ly5/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/j;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ly5/a;->b:Ly5/j;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;LH5/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LH5/p;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Ly5/h;->fold(Ly5/i;Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public get(Ly5/j;)Ly5/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ly5/i;",
            ">(",
            "Ly5/j;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ly5/h;->get(Ly5/i;Ly5/j;)Ly5/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getKey()Ly5/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly5/j;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly5/a;->b:Ly5/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public minusKey(Ly5/j;)Ly5/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/j;",
            ")",
            "Ly5/k;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ly5/h;->minusKey(Ly5/i;Ly5/j;)Ly5/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public plus(Ly5/k;)Ly5/k;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly5/h;->plus(Ly5/i;Ly5/k;)Ly5/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
