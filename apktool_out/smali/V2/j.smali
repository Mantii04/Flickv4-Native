.class public final LV2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LV2/i;

    .line 2
    .line 3
    invoke-direct {v0}, LV2/i;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LV2/i;->build()LV2/j;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, LV2/j;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, LV2/j;->b:J

    .line 7
    .line 8
    return-void
.end method

.method public static newBuilder()LV2/i;
    .locals 1

    .line 1
    new-instance v0, LV2/i;

    .line 2
    .line 3
    invoke-direct {v0}, LV2/i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getCurrentCacheSizeBytes()J
    .locals 2
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    .line 1
    iget-wide v0, p0, LV2/j;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxCacheSizeBytes()J
    .locals 2
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x2
    .end annotation

    .line 1
    iget-wide v0, p0, LV2/j;->b:J

    .line 2
    .line 3
    return-wide v0
.end method
