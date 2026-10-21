.class public final LA0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/o;


# instance fields
.field public final a:Lv0/P;

.field public final b:I

.field public final c:Lv0/J;


# direct methods
.method public constructor <init>(Lv0/P;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/b;->a:Lv0/P;

    .line 5
    .line 6
    iput p2, p0, LA0/b;->b:I

    .line 7
    .line 8
    new-instance p1, Lv0/J;

    .line 9
    .line 10
    invoke-direct {p1}, Lv0/J;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LA0/b;->c:Lv0/J;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lv0/D;)J
    .locals 10

    .line 1
    :goto_0
    invoke-interface {p1}, Lv0/D;->getPeekPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, 0x6

    .line 10
    .line 11
    sub-long/2addr v2, v4

    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    iget-object v1, p0, LA0/b;->a:Lv0/P;

    .line 15
    .line 16
    iget-object v2, p0, LA0/b;->c:Lv0/J;

    .line 17
    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, LA0/b;->b:I

    .line 21
    .line 22
    invoke-static {p1, v1, v0, v2}, Lv0/K;->checkFrameHeaderFromPeek(Lv0/D;Lv0/P;ILv0/J;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-interface {p1, v0}, Lv0/D;->advancePeekPosition(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {p1}, Lv0/D;->getPeekPosition()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 38
    .line 39
    .line 40
    move-result-wide v8

    .line 41
    sub-long/2addr v8, v4

    .line 42
    cmp-long v0, v6, v8

    .line 43
    .line 44
    if-ltz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-interface {p1}, Lv0/D;->getPeekPosition()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    sub-long/2addr v2, v4

    .line 55
    long-to-int v0, v2

    .line 56
    invoke-interface {p1, v0}, Lv0/D;->advancePeekPosition(I)V

    .line 57
    .line 58
    .line 59
    iget-wide v0, v1, Lv0/P;->j:J

    .line 60
    .line 61
    return-wide v0

    .line 62
    :cond_1
    iget-wide v0, v2, Lv0/J;->a:J

    .line 63
    .line 64
    return-wide v0
.end method

.method public final synthetic onSeekFinished()V
    .locals 0

    .line 1
    invoke-static {p0}, Lv0/n;->a(Lv0/o;)V

    return-void
.end method

.method public searchForTimestamp(Lv0/D;J)Lv0/m;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, p1}, LA0/b;->a(Lv0/D;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-interface {p1}, Lv0/D;->getPeekPosition()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    iget-object v6, p0, LA0/b;->a:Lv0/P;

    .line 14
    .line 15
    iget v6, v6, Lv0/P;->c:I

    .line 16
    .line 17
    const/4 v7, 0x6

    .line 18
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    invoke-interface {p1, v6}, Lv0/D;->advancePeekPosition(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, LA0/b;->a(Lv0/D;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    invoke-interface {p1}, Lv0/D;->getPeekPosition()J

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    cmp-long p1, v2, p2

    .line 34
    .line 35
    if-gtz p1, :cond_0

    .line 36
    .line 37
    cmp-long p1, v6, p2

    .line 38
    .line 39
    if-lez p1, :cond_0

    .line 40
    .line 41
    invoke-static {v4, v5}, Lv0/m;->targetFoundResult(J)Lv0/m;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_0
    cmp-long p1, v6, p2

    .line 47
    .line 48
    if-gtz p1, :cond_1

    .line 49
    .line 50
    invoke-static {v6, v7, v8, v9}, Lv0/m;->underestimatedResult(JJ)Lv0/m;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_1
    invoke-static {v2, v3, v0, v1}, Lv0/m;->overestimatedResult(JJ)Lv0/m;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method
