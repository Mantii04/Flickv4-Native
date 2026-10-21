.class public abstract Lv0/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/D;


# instance fields
.field public final a:Lv0/D;


# direct methods
.method public constructor <init>(Lv0/D;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv0/Q;->a:Lv0/D;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    invoke-interface {v0, p1}, Lv0/D;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    invoke-interface {v0, p1, p2}, Lv0/D;->advancePeekPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    .line 2
    .line 3
    invoke-interface {v0}, Lv0/D;->getLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    .line 2
    .line 3
    invoke-interface {v0}, Lv0/D;->getPeekPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    .line 2
    .line 3
    invoke-interface {v0}, Lv0/D;->getPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public peek([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lv0/D;->peek([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public peekFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    invoke-interface {v0, p1, p2, p3}, Lv0/D;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    invoke-interface {v0, p1, p2, p3, p4}, Lv0/D;->peekFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lv0/D;->read([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    invoke-interface {v0, p1, p2, p3}, Lv0/D;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    invoke-interface {v0, p1, p2, p3, p4}, Lv0/D;->readFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    .line 2
    .line 3
    invoke-interface {v0}, Lv0/D;->resetPeekPosition()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public skip(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lv0/D;->skip(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public skipFully(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    invoke-interface {v0, p1}, Lv0/D;->skipFully(I)V

    return-void
.end method

.method public skipFully(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv0/Q;->a:Lv0/D;

    invoke-interface {v0, p1, p2}, Lv0/D;->skipFully(IZ)Z

    move-result p1

    return p1
.end method
