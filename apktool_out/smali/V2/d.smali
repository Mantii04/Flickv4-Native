.class public final LV2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LV2/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LV2/c;

    .line 2
    .line 3
    invoke-direct {v0}, LV2/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LV2/c;->build()LV2/d;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(LV2/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LV2/d;->a:LV2/j;

    .line 5
    .line 6
    return-void
.end method

.method public static newBuilder()LV2/c;
    .locals 1

    .line 1
    new-instance v0, LV2/c;

    .line 2
    .line 3
    invoke-direct {v0}, LV2/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getStorageMetricsInternal()LV2/j;
    .locals 1
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "storageMetrics"
    .end annotation

    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, LV2/d;->a:LV2/j;

    .line 2
    .line 3
    return-object v0
.end method
