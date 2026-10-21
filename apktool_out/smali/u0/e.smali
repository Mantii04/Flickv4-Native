.class public interface abstract Lu0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dequeueInputBuffer()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;",
            "^",
            "Landroidx/media3/decoder/DecoderException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation
.end method

.method public abstract dequeueOutputBuffer()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;",
            "^",
            "Landroidx/media3/decoder/DecoderException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation
.end method

.method public abstract flush()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract queueInputBuffer(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V^",
            "Landroidx/media3/decoder/DecoderException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setOutputStartTimeUs(J)V
.end method
