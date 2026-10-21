.class public final Ln0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/c0;


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/X;
    .locals 0
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
    new-instance p1, Ln0/c;

    invoke-direct {p1}, Ln0/c;-><init>()V

    return-object p1
.end method

.method public final synthetic create(Ljava/lang/Class;Lm0/c;)Landroidx/lifecycle/X;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/lifecycle/b0;->b(Landroidx/lifecycle/c0;Ljava/lang/Class;Lm0/c;)Landroidx/lifecycle/X;

    move-result-object p1

    return-object p1
.end method
