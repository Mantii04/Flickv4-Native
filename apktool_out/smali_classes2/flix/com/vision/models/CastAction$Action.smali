.class public final enum Lflix/com/vision/models/CastAction$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/models/CastAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lflix/com/vision/models/CastAction$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lflix/com/vision/models/CastAction$Action;

.field public static final enum CLEAR_SUB_URL:Lflix/com/vision/models/CastAction$Action;

.field public static final enum PLAY_MOVIE:Lflix/com/vision/models/CastAction$Action;

.field public static final enum SERVE_SUB:Lflix/com/vision/models/CastAction$Action;


# direct methods
.method private static synthetic $values()[Lflix/com/vision/models/CastAction$Action;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lflix/com/vision/models/CastAction$Action;

    .line 3
    .line 4
    sget-object v1, Lflix/com/vision/models/CastAction$Action;->PLAY_MOVIE:Lflix/com/vision/models/CastAction$Action;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lflix/com/vision/models/CastAction$Action;->SERVE_SUB:Lflix/com/vision/models/CastAction$Action;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lflix/com/vision/models/CastAction$Action;->CLEAR_SUB_URL:Lflix/com/vision/models/CastAction$Action;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lflix/com/vision/models/CastAction$Action;

    .line 2
    .line 3
    const-string v1, "PLAY_MOVIE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lflix/com/vision/models/CastAction$Action;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lflix/com/vision/models/CastAction$Action;->PLAY_MOVIE:Lflix/com/vision/models/CastAction$Action;

    .line 10
    .line 11
    new-instance v0, Lflix/com/vision/models/CastAction$Action;

    .line 12
    .line 13
    const-string v1, "SERVE_SUB"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lflix/com/vision/models/CastAction$Action;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lflix/com/vision/models/CastAction$Action;->SERVE_SUB:Lflix/com/vision/models/CastAction$Action;

    .line 20
    .line 21
    new-instance v0, Lflix/com/vision/models/CastAction$Action;

    .line 22
    .line 23
    const-string v1, "CLEAR_SUB_URL"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lflix/com/vision/models/CastAction$Action;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lflix/com/vision/models/CastAction$Action;->CLEAR_SUB_URL:Lflix/com/vision/models/CastAction$Action;

    .line 30
    .line 31
    invoke-static {}, Lflix/com/vision/models/CastAction$Action;->$values()[Lflix/com/vision/models/CastAction$Action;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lflix/com/vision/models/CastAction$Action;->$VALUES:[Lflix/com/vision/models/CastAction$Action;

    .line 36
    .line 37
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

.method public static valueOf(Ljava/lang/String;)Lflix/com/vision/models/CastAction$Action;
    .locals 1

    .line 1
    const-class v0, Lflix/com/vision/models/CastAction$Action;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lflix/com/vision/models/CastAction$Action;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lflix/com/vision/models/CastAction$Action;
    .locals 1

    .line 1
    sget-object v0, Lflix/com/vision/models/CastAction$Action;->$VALUES:[Lflix/com/vision/models/CastAction$Action;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lflix/com/vision/models/CastAction$Action;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lflix/com/vision/models/CastAction$Action;

    .line 8
    .line 9
    return-object v0
.end method
