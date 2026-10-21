.class public Lflix/com/vision/models/ServerFFHQ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public episodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Episode;",
            ">;"
        }
    .end annotation
.end field

.field public label:Ljava/lang/String;

.field public server_id:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/models/ServerFFHQ;->episodes:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/ServerFFHQ;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
