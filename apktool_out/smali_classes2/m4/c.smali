.class public final Lm4/c;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm4/c;->initialValue()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/lang/StringBuilder;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Picasso-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
