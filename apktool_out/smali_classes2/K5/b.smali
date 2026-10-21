.class public final LK5/b;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LK5/b;->initialValue()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/util/Random;
    .locals 1

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    return-object v0
.end method
