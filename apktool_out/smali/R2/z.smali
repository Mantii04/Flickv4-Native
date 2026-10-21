.class public abstract LR2/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static jsonBuilder(Ljava/lang/String;)LR2/y;
    .locals 1

    .line 1
    new-instance v0, LR2/o;

    .line 2
    .line 3
    invoke-direct {v0}, LR2/y;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, LR2/o;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0
.end method

.method public static protoBuilder([B)LR2/y;
    .locals 1

    .line 1
    new-instance v0, LR2/o;

    .line 2
    .line 3
    invoke-direct {v0}, LR2/y;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, LR2/o;->d:[B

    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public abstract getEventCode()Ljava/lang/Integer;
.end method

.method public abstract getEventTimeMs()J
.end method

.method public abstract getEventUptimeMs()J
.end method

.method public abstract getNetworkConnectionInfo()LR2/E;
.end method

.method public abstract getSourceExtension()[B
.end method

.method public abstract getSourceExtensionJsonProto3()Ljava/lang/String;
.end method

.method public abstract getTimezoneOffsetSeconds()J
.end method
