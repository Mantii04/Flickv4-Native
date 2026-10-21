.class public Lflix/com/vision/models/Subtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/models/Subtitle$SUB_TYPE;
    }
.end annotation


# instance fields
.field public encoding:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public type:Lflix/com/vision/models/Subtitle$SUB_TYPE;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lflix/com/vision/models/Subtitle$SUB_TYPE;->OPENSUBTITLE:Lflix/com/vision/models/Subtitle$SUB_TYPE;

    .line 5
    .line 6
    iput-object v0, p0, Lflix/com/vision/models/Subtitle;->type:Lflix/com/vision/models/Subtitle$SUB_TYPE;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Subtitle;->url:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Lflix/com/vision/models/Subtitle;

    .line 4
    .line 5
    iget-object p1, p1, Lflix/com/vision/models/Subtitle;->url:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Subtitle;->url:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Lflix/com/vision/models/Subtitle;

    .line 4
    .line 5
    iget-object p1, p1, Lflix/com/vision/models/Subtitle;->url:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
