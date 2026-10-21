.class public Lflix/com/vision/models/Cast;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public CharacterName:Ljava/lang/String;

.field public gender:I

.field private id:J

.field private img_url:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lflix/com/vision/models/Cast;->gender:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lflix/com/vision/models/Cast;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getImg_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Cast;->img_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Cast;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lflix/com/vision/models/Cast;->id:J

    .line 2
    .line 3
    return-void
.end method

.method public setImg_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Cast;->img_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Cast;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
