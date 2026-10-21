.class public final enum Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/activities/player/PlayerActivityLiveTV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RESULT_EVENT_PLAYER_CTIVITY_LIVE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;

.field public static final synthetic e:[Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;

    .line 4
    .line 5
    const-string v3, "SHOW"

    .line 6
    .line 7
    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;

    .line 11
    .line 12
    const-string v4, "HIDE"

    .line 13
    .line 14
    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v3, Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;->b:Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    new-array v4, v4, [Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;

    .line 21
    .line 22
    aput-object v2, v4, v1

    .line 23
    .line 24
    aput-object v3, v4, v0

    .line 25
    .line 26
    sput-object v4, Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;->e:[Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;

    .line 27
    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;
    .locals 1

    .line 1
    const-class v0, Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;
    .locals 1

    .line 1
    sget-object v0, Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;->e:[Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;

    .line 8
    .line 9
    return-object v0
.end method
