.class public Lflix/com/vision/tv/TVCategory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private CategoryId:I

.field private CategoryImageUrl:Ljava/lang/String;

.field private CategoryName:Ljava/lang/String;


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


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lflix/com/vision/tv/TVCategory;

    .line 2
    .line 3
    invoke-virtual {p0}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    iget-object v0, p0, Lflix/com/vision/tv/TVCategory;->CategoryName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_2
    :goto_0
    return v1
.end method

.method public getCategoryId()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/tv/TVCategory;->CategoryId:I

    .line 2
    .line 3
    return v0
.end method

.method public getCategoryImageurl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/TVCategory;->CategoryImageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/TVCategory;->CategoryName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCategoryId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/tv/TVCategory;->CategoryId:I

    .line 2
    .line 3
    return-void
.end method

.method public setCategoryImageurl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/tv/TVCategory;->CategoryImageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/tv/TVCategory;->CategoryName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
