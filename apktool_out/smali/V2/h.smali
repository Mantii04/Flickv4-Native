.class public final LV2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LV2/g;

    .line 2
    .line 3
    invoke-direct {v0}, LV2/g;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LV2/g;->build()LV2/h;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LV2/h;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, LV2/h;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static newBuilder()LV2/g;
    .locals 1

    .line 1
    new-instance v0, LV2/g;

    .line 2
    .line 3
    invoke-direct {v0}, LV2/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getLogEventDroppedList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "logEventDropped"
    .end annotation

    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LV2/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LV2/h;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogSource()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, LV2/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
