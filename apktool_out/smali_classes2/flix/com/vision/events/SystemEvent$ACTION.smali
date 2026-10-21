.class public final enum Lflix/com/vision/events/SystemEvent$ACTION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lflix/com/vision/events/SystemEvent$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lflix/com/vision/events/SystemEvent$ACTION;

.field public static final enum e:Lflix/com/vision/events/SystemEvent$ACTION;

.field public static final enum f:Lflix/com/vision/events/SystemEvent$ACTION;

.field public static final synthetic j:[Lflix/com/vision/events/SystemEvent$ACTION;


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
    new-instance v5, Lflix/com/vision/events/SystemEvent$ACTION;

    .line 7
    .line 8
    const-string v6, "HIDE_CHANNEL_LIST"

    .line 9
    .line 10
    invoke-direct {v5, v6, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sput-object v5, Lflix/com/vision/events/SystemEvent$ACTION;->b:Lflix/com/vision/events/SystemEvent$ACTION;

    .line 14
    .line 15
    new-instance v6, Lflix/com/vision/events/SystemEvent$ACTION;

    .line 16
    .line 17
    const-string v7, "STOP_LOADING_RD"

    .line 18
    .line 19
    invoke-direct {v6, v7, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    new-instance v7, Lflix/com/vision/events/SystemEvent$ACTION;

    .line 23
    .line 24
    const-string v8, "DONE_LOADING_RD"

    .line 25
    .line 26
    invoke-direct {v7, v8, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    new-instance v8, Lflix/com/vision/events/SystemEvent$ACTION;

    .line 30
    .line 31
    const-string v9, "RELOAD_LIST"

    .line 32
    .line 33
    invoke-direct {v8, v9, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    sput-object v8, Lflix/com/vision/events/SystemEvent$ACTION;->e:Lflix/com/vision/events/SystemEvent$ACTION;

    .line 37
    .line 38
    new-instance v9, Lflix/com/vision/events/SystemEvent$ACTION;

    .line 39
    .line 40
    const-string v10, "REFRESH_COUNTER"

    .line 41
    .line 42
    invoke-direct {v9, v10, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v9, Lflix/com/vision/events/SystemEvent$ACTION;->f:Lflix/com/vision/events/SystemEvent$ACTION;

    .line 46
    .line 47
    const/4 v10, 0x5

    .line 48
    new-array v10, v10, [Lflix/com/vision/events/SystemEvent$ACTION;

    .line 49
    .line 50
    aput-object v5, v10, v4

    .line 51
    .line 52
    aput-object v6, v10, v3

    .line 53
    .line 54
    aput-object v7, v10, v2

    .line 55
    .line 56
    aput-object v8, v10, v1

    .line 57
    .line 58
    aput-object v9, v10, v0

    .line 59
    .line 60
    sput-object v10, Lflix/com/vision/events/SystemEvent$ACTION;->j:[Lflix/com/vision/events/SystemEvent$ACTION;

    .line 61
    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lflix/com/vision/events/SystemEvent$ACTION;
    .locals 1

    .line 1
    const-class v0, Lflix/com/vision/events/SystemEvent$ACTION;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lflix/com/vision/events/SystemEvent$ACTION;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lflix/com/vision/events/SystemEvent$ACTION;
    .locals 1

    .line 1
    sget-object v0, Lflix/com/vision/events/SystemEvent$ACTION;->j:[Lflix/com/vision/events/SystemEvent$ACTION;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lflix/com/vision/events/SystemEvent$ACTION;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lflix/com/vision/events/SystemEvent$ACTION;

    .line 8
    .line 9
    return-object v0
.end method
