.class public Lflix/com/vision/models/ServerIPTV;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ID:I

.field public Id:Ljava/lang/String;

.field public IsMoreSLegacy:Z

.field public IsMoreServer:Z

.field public label:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lflix/com/vision/models/ServerIPTV;->label:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lflix/com/vision/models/ServerIPTV;->logo:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lflix/com/vision/models/ServerIPTV;->type:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lflix/com/vision/models/ServerIPTV;->url:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lflix/com/vision/models/ServerIPTV;->Id:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "aaaa"

    .line 17
    .line 18
    iput-object v0, p0, Lflix/com/vision/models/ServerIPTV;->mode:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method
