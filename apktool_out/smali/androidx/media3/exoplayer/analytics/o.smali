.class public final synthetic Landroidx/media3/exoplayer/analytics/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:J

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/analytics/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/o;->e:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/exoplayer/analytics/o;->j:I

    iput-wide p3, p0, Landroidx/media3/exoplayer/analytics/o;->f:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JII)V
    .locals 0

    .line 2
    iput p5, p0, Landroidx/media3/exoplayer/analytics/o;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/o;->e:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/media3/exoplayer/analytics/o;->f:J

    iput p4, p0, Landroidx/media3/exoplayer/analytics/o;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 14

    .line 1
    check-cast p1, LS0/c;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/o;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, LS0/u;

    .line 6
    .line 7
    iget-object v1, v0, LS0/u;->i:Landroidx/media3/common/Format;

    .line 8
    .line 9
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, LS0/c;->a:Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    iget-wide v2, p1, LS0/c;->c:J

    .line 15
    .line 16
    iget-object v4, v0, LS0/u;->c:LS0/b;

    .line 17
    .line 18
    invoke-virtual {v4, v1, v2, v3}, LS0/b;->encode(Ljava/util/List;J)[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, v0, LS0/u;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 25
    .line 26
    .line 27
    array-length v3, v1

    .line 28
    iget-object v4, v0, LS0/u;->a:Lv0/r0;

    .line 29
    .line 30
    invoke-interface {v4, v2, v3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 31
    .line 32
    .line 33
    iget-wide v2, p1, LS0/c;->b:J

    .line 34
    .line 35
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    cmp-long p1, v2, v4

    .line 41
    .line 42
    iget-wide v4, p0, Landroidx/media3/exoplayer/analytics/o;->f:J

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    const-wide v7, 0x7fffffffffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    iget-object p1, v0, LS0/u;->i:Landroidx/media3/common/Format;

    .line 53
    .line 54
    iget-wide v2, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 55
    .line 56
    cmp-long p1, v2, v7

    .line 57
    .line 58
    if-nez p1, :cond_0

    .line 59
    .line 60
    move p1, v6

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p1, 0x0

    .line 63
    :goto_0
    invoke-static {p1}, LP3/v;->checkState(Z)V

    .line 64
    .line 65
    .line 66
    :goto_1
    move-wide v8, v4

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    iget-object p1, v0, LS0/u;->i:Landroidx/media3/common/Format;

    .line 69
    .line 70
    iget-wide v9, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 71
    .line 72
    cmp-long p1, v9, v7

    .line 73
    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    add-long/2addr v4, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    add-long v4, v2, v9

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :goto_2
    iget p1, p0, Landroidx/media3/exoplayer/analytics/o;->j:I

    .line 82
    .line 83
    or-int/lit8 v10, p1, 0x1

    .line 84
    .line 85
    array-length v11, v1

    .line 86
    const/4 v12, 0x0

    .line 87
    const/4 v13, 0x0

    .line 88
    iget-object v7, v0, LS0/u;->a:Lv0/r0;

    .line 89
    .line 90
    invoke-interface/range {v7 .. v13}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/analytics/o;->b:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/o;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/o;->f:J

    iget v3, p0, Landroidx/media3/exoplayer/analytics/o;->j:I

    invoke-static {v0, v3, v1, v2, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->Q(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/o;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Landroidx/media3/exoplayer/analytics/o;->j:I

    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/o;->f:J

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->u(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
