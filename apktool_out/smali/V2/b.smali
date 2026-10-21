.class public final LV2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LV2/l;

.field public final b:Ljava/util/List;

.field public final c:LV2/d;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LV2/a;

    .line 2
    .line 3
    invoke-direct {v0}, LV2/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LV2/a;->build()LV2/b;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(LV2/l;Ljava/util/List;LV2/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LV2/b;->a:LV2/l;

    .line 5
    .line 6
    iput-object p2, p0, LV2/b;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, LV2/b;->c:LV2/d;

    .line 9
    .line 10
    iput-object p4, p0, LV2/b;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static newBuilder()LV2/a;
    .locals 1

    .line 1
    new-instance v0, LV2/a;

    .line 2
    .line 3
    invoke-direct {v0}, LV2/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getAppNamespace()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x4
    .end annotation

    .line 1
    iget-object v0, p0, LV2/b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGlobalMetricsInternal()LV2/d;
    .locals 1
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "globalMetrics"
    .end annotation

    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x3
    .end annotation

    .line 1
    iget-object v0, p0, LV2/b;->c:LV2/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogSourceMetricsList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "logSourceMetrics"
    .end annotation

    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LV2/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LV2/b;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWindowInternal()LV2/l;
    .locals 1
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "window"
    .end annotation

    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, LV2/b;->a:LV2/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 1
    invoke-static {p0}, LS2/y;->encode(Ljava/lang/Object;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
