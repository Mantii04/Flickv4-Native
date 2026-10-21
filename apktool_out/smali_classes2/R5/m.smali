.class public interface abstract LR5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly5/c;


# virtual methods
.method public abstract cancel(Ljava/lang/Throwable;)Z
.end method

.method public abstract completeResume(Ljava/lang/Object;)V
.end method

.method public abstract invokeOnCancellation(LH5/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH5/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resume(Ljava/lang/Object;LH5/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LH5/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract tryResume(Ljava/lang/Object;Ljava/lang/Object;LH5/l;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "LH5/l;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
