.class public final enum Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

.field public static final synthetic e:[Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 4
    .line 5
    const-string v3, "UNKNOWN"

    .line 6
    .line 7
    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 11
    .line 12
    const-string v4, "ANDROID_FIREBASE"

    .line 13
    .line 14
    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v3, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->b:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    new-array v4, v4, [Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 21
    .line 22
    aput-object v2, v4, v1

    .line 23
    .line 24
    aput-object v3, v4, v0

    .line 25
    .line 26
    sput-object v4, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->e:[Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 27
    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->e:[Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 8
    .line 9
    return-object v0
.end method
