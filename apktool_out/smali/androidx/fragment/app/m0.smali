.class public final Landroidx/fragment/app/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/c0;


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/X;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/X;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    new-instance p1, Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/fragment/app/n0;-><init>(Z)V

    return-object p1
.end method

.method public final synthetic create(Ljava/lang/Class;Lm0/c;)Landroidx/lifecycle/X;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/lifecycle/b0;->b(Landroidx/lifecycle/c0;Ljava/lang/Class;Lm0/c;)Landroidx/lifecycle/X;

    move-result-object p1

    return-object p1
.end method
