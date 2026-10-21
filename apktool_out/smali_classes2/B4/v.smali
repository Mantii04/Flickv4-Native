.class public final synthetic LB4/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V
    .locals 0

    .line 1
    iput p2, p0, LB4/v;->b:I

    iput-object p1, p0, LB4/v;->e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, LB4/v;->e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    iget v1, p0, LB4/v;->b:I

    .line 4
    .line 5
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-boolean v1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseRDVideo(Lcom/google/gson/JsonElement;)Lflix/com/vision/models/VideoSource;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :pswitch_0
    sget-boolean v1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    new-instance v1, Lflix/com/vision/models/IntroDbResponse;

    .line 33
    .line 34
    invoke-direct {v1}, Lflix/com/vision/models/IntroDbResponse;-><init>()V

    .line 35
    .line 36
    .line 37
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    .line 38
    .line 39
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 40
    .line 41
    .line 42
    const-class v3, Lflix/com/vision/models/IntroDbResponse;

    .line 43
    .line 44
    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lflix/com/vision/models/IntroDbResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    move-object v1, p1

    .line 51
    :catch_0
    iget-object p1, v1, Lflix/com/vision/models/IntroDbResponse;->intro:Lflix/com/vision/models/IntroDbResponse$Segment;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-wide v2, p1, Lflix/com/vision/models/IntroDbResponse$Segment;->confidence:D

    .line 56
    .line 57
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 58
    .line 59
    cmpl-double v2, v2, v4

    .line 60
    .line 61
    if-lez v2, :cond_1

    .line 62
    .line 63
    iput-object p1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P0:Lflix/com/vision/models/IntroDbResponse$Segment;

    .line 64
    .line 65
    iget-object p1, v1, Lflix/com/vision/models/IntroDbResponse;->outro:Lflix/com/vision/models/IntroDbResponse$Segment;

    .line 66
    .line 67
    iput-object p1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->O0:Lflix/com/vision/models/IntroDbResponse$Segment;

    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
