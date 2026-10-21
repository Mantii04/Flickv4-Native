.class public Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaLoadRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/cast/MediaInfo;

.field public b:Lcom/google/android/gms/cast/MediaQueueData;

.field public final c:Ljava/lang/Boolean;

.field public d:J

.field public e:D

.field public f:[J

.field public g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->c:Ljava/lang/Boolean;

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->d:J

    .line 11
    .line 12
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->e:D

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaLoadRequestData;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->b:Lcom/google/android/gms/cast/MediaQueueData;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->c:Ljava/lang/Boolean;

    .line 10
    .line 11
    iget-wide v5, v0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->d:J

    .line 12
    .line 13
    iget-wide v7, v0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->e:D

    .line 14
    .line 15
    iget-object v9, v0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->f:[J

    .line 16
    .line 17
    iget-object v10, v0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->g:Lorg/json/JSONObject;

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x0

    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    const-wide/16 v15, 0x0

    .line 24
    .line 25
    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/cast/MediaLoadRequestData;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public setActiveTrackIds([J)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->f:[J

    return-object p0
.end method

.method public setCurrentTime(J)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->d:J

    return-object p0
.end method

.method public setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->g:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setMediaInfo(Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->a:Lcom/google/android/gms/cast/MediaInfo;

    return-object p0
.end method

.method public setPlaybackRate(D)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 2
    .line 3
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 10
    .line 11
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->e:D

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "playbackRate must be between PLAYBACK_RATE_MIN and PLAYBACK_RATE_MAX"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public setQueueData(Lcom/google/android/gms/cast/MediaQueueData;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->b:Lcom/google/android/gms/cast/MediaQueueData;

    return-object p0
.end method
