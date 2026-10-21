.class public final enum Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/activities/AnimeDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RESULT_EVENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

.field public static final enum e:Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

.field public static final synthetic f:[Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    new-instance v5, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 7
    .line 8
    const-string v6, "SUCCESS"

    .line 9
    .line 10
    invoke-direct {v5, v6, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sput-object v5, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;->b:Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 14
    .line 15
    new-instance v6, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 16
    .line 17
    const-string v7, "ERROR"

    .line 18
    .line 19
    invoke-direct {v6, v7, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    new-instance v7, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 23
    .line 24
    const-string v8, "EPISODE_READY"

    .line 25
    .line 26
    invoke-direct {v7, v8, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    new-instance v8, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 30
    .line 31
    const-string v9, "EPISODE_FAILED"

    .line 32
    .line 33
    invoke-direct {v8, v9, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    sput-object v8, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;->e:Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 37
    .line 38
    new-instance v9, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 39
    .line 40
    const-string v10, "LOAD_FOO_LINK"

    .line 41
    .line 42
    invoke-direct {v9, v10, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    const/4 v10, 0x5

    .line 46
    new-array v10, v10, [Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 47
    .line 48
    aput-object v5, v10, v4

    .line 49
    .line 50
    aput-object v6, v10, v3

    .line 51
    .line 52
    aput-object v7, v10, v2

    .line 53
    .line 54
    aput-object v8, v10, v1

    .line 55
    .line 56
    aput-object v9, v10, v0

    .line 57
    .line 58
    sput-object v10, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;->f:[Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 59
    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;
    .locals 1

    .line 1
    const-class v0, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;
    .locals 1

    .line 1
    sget-object v0, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;->f:[Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 8
    .line 9
    return-object v0
.end method
