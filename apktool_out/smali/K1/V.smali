.class public abstract LK1/V;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final generationalId(LK1/E;)LK1/r;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LK1/r;

    .line 7
    .line 8
    iget-object v1, p0, LK1/E;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, LK1/E;->getGeneration()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-direct {v0, v1, p0}, LK1/r;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
