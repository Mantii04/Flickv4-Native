.class public interface abstract LT5/s;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close(Ljava/lang/Throwable;)Z
.end method

.method public abstract invokeOnClose(LH5/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH5/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract isClosedForSend()Z
.end method

.method public abstract send(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
