.class public final enum Lflix/com/vision/models/PlayerEvent$ACTION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/models/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lflix/com/vision/models/PlayerEvent$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lflix/com/vision/models/PlayerEvent$ACTION;

.field public static final enum COMPLETED:Lflix/com/vision/models/PlayerEvent$ACTION;

.field public static final enum EPISODE_FAILED:Lflix/com/vision/models/PlayerEvent$ACTION;

.field public static final enum ERROR:Lflix/com/vision/models/PlayerEvent$ACTION;

.field public static final enum PAUSE:Lflix/com/vision/models/PlayerEvent$ACTION;

.field public static final enum PLAY:Lflix/com/vision/models/PlayerEvent$ACTION;

.field public static final enum PREPARED:Lflix/com/vision/models/PlayerEvent$ACTION;


# direct methods
.method private static synthetic $values()[Lflix/com/vision/models/PlayerEvent$ACTION;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 3
    .line 4
    sget-object v1, Lflix/com/vision/models/PlayerEvent$ACTION;->PLAY:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lflix/com/vision/models/PlayerEvent$ACTION;->PAUSE:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lflix/com/vision/models/PlayerEvent$ACTION;->PREPARED:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lflix/com/vision/models/PlayerEvent$ACTION;->ERROR:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lflix/com/vision/models/PlayerEvent$ACTION;->COMPLETED:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lflix/com/vision/models/PlayerEvent$ACTION;->EPISODE_FAILED:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 2
    .line 3
    const-string v1, "PLAY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lflix/com/vision/models/PlayerEvent$ACTION;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lflix/com/vision/models/PlayerEvent$ACTION;->PLAY:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 10
    .line 11
    new-instance v0, Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 12
    .line 13
    const-string v1, "PAUSE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lflix/com/vision/models/PlayerEvent$ACTION;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lflix/com/vision/models/PlayerEvent$ACTION;->PAUSE:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 20
    .line 21
    new-instance v0, Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 22
    .line 23
    const-string v1, "PREPARED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lflix/com/vision/models/PlayerEvent$ACTION;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lflix/com/vision/models/PlayerEvent$ACTION;->PREPARED:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 30
    .line 31
    new-instance v0, Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 32
    .line 33
    const-string v1, "ERROR"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lflix/com/vision/models/PlayerEvent$ACTION;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lflix/com/vision/models/PlayerEvent$ACTION;->ERROR:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 40
    .line 41
    new-instance v0, Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 42
    .line 43
    const-string v1, "COMPLETED"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lflix/com/vision/models/PlayerEvent$ACTION;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lflix/com/vision/models/PlayerEvent$ACTION;->COMPLETED:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 50
    .line 51
    new-instance v0, Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 52
    .line 53
    const-string v1, "EPISODE_FAILED"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lflix/com/vision/models/PlayerEvent$ACTION;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lflix/com/vision/models/PlayerEvent$ACTION;->EPISODE_FAILED:Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 60
    .line 61
    invoke-static {}, Lflix/com/vision/models/PlayerEvent$ACTION;->$values()[Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lflix/com/vision/models/PlayerEvent$ACTION;->$VALUES:[Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 66
    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lflix/com/vision/models/PlayerEvent$ACTION;
    .locals 1

    .line 1
    const-class v0, Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lflix/com/vision/models/PlayerEvent$ACTION;
    .locals 1

    .line 1
    sget-object v0, Lflix/com/vision/models/PlayerEvent$ACTION;->$VALUES:[Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lflix/com/vision/models/PlayerEvent$ACTION;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lflix/com/vision/models/PlayerEvent$ACTION;

    .line 8
    .line 9
    return-object v0
.end method
