.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StuckSuppressedDetector"
.end annotation


# instance fields
.field private isSuppressed:Z

.field private startRealtimeMs:J

.field private final stuckSuppressedTimeoutMs:I

.field private suppressionReason:I

.field final synthetic this$0:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->stuckSuppressedTimeoutMs:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public update()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x4

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 25
    .line 26
    invoke-static {v1}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackState()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eq v1, v3, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 38
    .line 39
    invoke-static {v1}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackState()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eq v1, v2, :cond_3

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    if-ne v0, v3, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 55
    .line 56
    invoke-static {v1}, Landroidx/media3/common/util/StuckPlayerDetector;->access$400(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/Clock;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    iget-boolean v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->isSuppressed:Z

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->suppressionReason:I

    .line 69
    .line 70
    if-ne v1, v0, :cond_2

    .line 71
    .line 72
    iget-wide v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->startRealtimeMs:J

    .line 73
    .line 74
    sub-long/2addr v4, v0

    .line 75
    iget v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->stuckSuppressedTimeoutMs:I

    .line 76
    .line 77
    int-to-long v0, v0

    .line 78
    cmp-long v0, v4, v0

    .line 79
    .line 80
    if-ltz v0, :cond_1

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 83
    .line 84
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$500(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Landroidx/media3/common/util/StuckPlayerException;

    .line 89
    .line 90
    iget v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->stuckSuppressedTimeoutMs:I

    .line 91
    .line 92
    invoke-direct {v1, v2, v3}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v1}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->onStuckPlayerDetected(Landroidx/media3/common/util/StuckPlayerException;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void

    .line 99
    :cond_2
    iput-boolean v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->isSuppressed:Z

    .line 100
    .line 101
    iput-wide v4, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->startRealtimeMs:J

    .line 102
    .line 103
    iput v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->suppressionReason:I

    .line 104
    .line 105
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 106
    .line 107
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 115
    .line 116
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->stuckSuppressedTimeoutMs:I

    .line 121
    .line 122
    invoke-interface {v0, v2, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessageDelayed(II)Z

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->isSuppressed:Z

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 131
    .line 132
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 137
    .line 138
    .line 139
    :cond_4
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->isSuppressed:Z

    .line 141
    .line 142
    return-void
.end method
