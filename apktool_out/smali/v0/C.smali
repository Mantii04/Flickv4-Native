.class public interface abstract Lv0/C;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getSniffFailureDetails()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lv0/k0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnderlyingImplementation()Lv0/C;
.end method

.method public abstract init(Lv0/F;)V
.end method

.method public abstract read(Lv0/D;Lv0/c0;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract seek(JJ)V
.end method

.method public abstract sniff(Lv0/D;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
