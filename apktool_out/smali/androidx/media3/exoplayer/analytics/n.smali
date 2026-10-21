.class public final synthetic Landroidx/media3/exoplayer/analytics/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic j:J

.field public final synthetic m:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJI)V
    .locals 0

    .line 1
    iput p7, p0, Landroidx/media3/exoplayer/analytics/n;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/n;->e:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/n;->f:Ljava/lang/String;

    iput-wide p3, p0, Landroidx/media3/exoplayer/analytics/n;->j:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/analytics/n;->m:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/exoplayer/analytics/n;->b:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v8, p1

    check-cast v8, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/n;->f:Ljava/lang/String;

    iget-wide v4, v0, Landroidx/media3/exoplayer/analytics/n;->j:J

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/n;->e:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-wide v6, v0, Landroidx/media3/exoplayer/analytics/n;->m:J

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->d(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    move-object/from16 v15, p1

    check-cast v15, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v10, v0, Landroidx/media3/exoplayer/analytics/n;->f:Ljava/lang/String;

    iget-wide v11, v0, Landroidx/media3/exoplayer/analytics/n;->j:J

    iget-object v9, v0, Landroidx/media3/exoplayer/analytics/n;->e:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-wide v13, v0, Landroidx/media3/exoplayer/analytics/n;->m:J

    invoke-static/range {v9 .. v15}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->a0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
