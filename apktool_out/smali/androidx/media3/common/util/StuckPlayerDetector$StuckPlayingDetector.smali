.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StuckPlayingDetector"
.end annotation


# instance fields
.field private adGroupIndex:I

.field private adIndexInAdGroup:I

.field private currentPositionInPeriodMs:J

.field private isPlaying:Z

.field private periodUid:Ljava/lang/Object;

.field private startRealtimeMs:J

.field private final stuckPlayingTimeoutMs:I

.field final synthetic this$0:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->stuckPlayingTimeoutMs:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public update()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->isPlaying:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->isPlaying:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object v2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 50
    .line 51
    invoke-static {v2}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, v2}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_0
    iget-object v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 64
    .line 65
    invoke-static {v3}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v3}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    iget-object v4, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 74
    .line 75
    invoke-static {v4}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    iget-object v5, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 84
    .line 85
    invoke-static {v5}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v5}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    const/4 v7, -0x1

    .line 96
    if-ne v3, v7, :cond_3

    .line 97
    .line 98
    iget-object v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 99
    .line 100
    invoke-static {v7}, Landroidx/media3/common/util/StuckPlayerDetector;->access$300(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Timeline$Period;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v0, v2, v7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowMs()J

    .line 109
    .line 110
    .line 111
    move-result-wide v7

    .line 112
    sub-long/2addr v5, v7

    .line 113
    :cond_3
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 114
    .line 115
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$400(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/Clock;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    .line 120
    .line 121
    .line 122
    move-result-wide v7

    .line 123
    iget-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->isPlaying:Z

    .line 124
    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->periodUid:Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    iget v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->adGroupIndex:I

    .line 136
    .line 137
    if-ne v3, v0, :cond_5

    .line 138
    .line 139
    iget v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->adIndexInAdGroup:I

    .line 140
    .line 141
    if-ne v4, v0, :cond_5

    .line 142
    .line 143
    iget-wide v9, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->currentPositionInPeriodMs:J

    .line 144
    .line 145
    cmp-long v0, v5, v9

    .line 146
    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    iget-wide v2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->startRealtimeMs:J

    .line 150
    .line 151
    sub-long/2addr v7, v2

    .line 152
    iget v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->stuckPlayingTimeoutMs:I

    .line 153
    .line 154
    int-to-long v2, v0

    .line 155
    cmp-long v0, v7, v2

    .line 156
    .line 157
    if-ltz v0, :cond_4

    .line 158
    .line 159
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 160
    .line 161
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$500(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    new-instance v2, Landroidx/media3/common/util/StuckPlayerException;

    .line 166
    .line 167
    iget v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->stuckPlayingTimeoutMs:I

    .line 168
    .line 169
    invoke-direct {v2, v1, v3}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v2}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->onStuckPlayerDetected(Landroidx/media3/common/util/StuckPlayerException;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    return-void

    .line 176
    :cond_5
    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->isPlaying:Z

    .line 178
    .line 179
    iput-wide v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->startRealtimeMs:J

    .line 180
    .line 181
    iput-object v2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->periodUid:Ljava/lang/Object;

    .line 182
    .line 183
    iput v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->adGroupIndex:I

    .line 184
    .line 185
    iput v4, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->adIndexInAdGroup:I

    .line 186
    .line 187
    iput-wide v5, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->currentPositionInPeriodMs:J

    .line 188
    .line 189
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 190
    .line 191
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 199
    .line 200
    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget v2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->stuckPlayingTimeoutMs:I

    .line 205
    .line 206
    invoke-interface {v0, v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessageDelayed(II)Z

    .line 207
    .line 208
    .line 209
    return-void
.end method
