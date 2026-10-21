.class public final LV5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly5/k;


# instance fields
.field public final b:Ljava/lang/Throwable;

.field public final synthetic e:Ly5/k;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ly5/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LV5/d;->b:Ljava/lang/Throwable;

    .line 5
    .line 6
    iput-object p2, p0, LV5/d;->e:Ly5/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;LH5/p;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, LV5/d;->e:Ly5/k;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ly5/k;->fold(Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public get(Ly5/j;)Ly5/i;
    .locals 1
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
    iget-object v0, p0, LV5/d;->e:Ly5/k;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ly5/k;->get(Ly5/j;)Ly5/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public minusKey(Ly5/j;)Ly5/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/j;",
            ")",
            "Ly5/k;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LV5/d;->e:Ly5/k;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ly5/k;->minusKey(Ly5/j;)Ly5/k;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public plus(Ly5/k;)Ly5/k;
    .locals 1

    .line 1
    iget-object v0, p0, LV5/d;->e:Ly5/k;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ly5/k;->plus(Ly5/k;)Ly5/k;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
