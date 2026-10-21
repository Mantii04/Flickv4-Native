.class public final Ll2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/j;


# instance fields
.field public final synthetic a:Ljava/nio/ByteBuffer;

.field public final synthetic b:Lo2/b;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lo2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll2/g;->a:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iput-object p2, p0, Ll2/g;->b:Lo2/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getOrientationAndRewind(Ll2/c;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll2/g;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Ll2/g;->b:Lo2/b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Ll2/c;->getOrientation(Ljava/nio/ByteBuffer;Lo2/b;)I

    .line 6
    .line 7
    .line 8
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0}, LG2/c;->rewind(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    invoke-static {v0}, LG2/c;->rewind(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    throw p1
.end method
