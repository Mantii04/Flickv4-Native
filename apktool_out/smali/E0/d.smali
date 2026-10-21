.class public abstract LE0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final decode(LE0/b;)Landroidx/media3/common/Metadata;
    .locals 2

    .line 1
    iget-object v0, p1, Lu0/f;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LP3/v;->checkArgument(Z)V

    .line 3
    invoke-virtual {p0, p1, v0}, LE0/d;->decode(LE0/b;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public abstract decode(LE0/b;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
.end method
