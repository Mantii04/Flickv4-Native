.class public Lflix/com/vision/models/Drama;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x8aL


# instance fields
.field public image_url:Ljava/lang/String;

.field public is_series:Z

.field public server:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public title_with_year:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public year:Ljava/lang/String;


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
    iput-object v0, p0, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lflix/com/vision/models/Drama;->title_with_year:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lflix/com/vision/models/Drama;->url:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lflix/com/vision/models/Drama;->image_url:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "drama"

    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/models/Drama;->server:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Drama;->url:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Lflix/com/vision/models/Drama;

    .line 4
    .line 5
    iget-object p1, p1, Lflix/com/vision/models/Drama;->url:Ljava/lang/String;

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

.method public getYear()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/lit8 v3, v3, -0x6

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "("

    .line 26
    .line 27
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_0
    move-object v0, v1

    .line 45
    :goto_0
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x4

    .line 52
    if-eq v2, v3, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v1, v0

    .line 56
    :cond_2
    :goto_1
    return-object v1
.end method

.method public toMovie()Lflix/com/vision/models/Movie;
    .locals 2

    .line 1
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lflix/com/vision/models/Drama;->url:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setUrl(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lflix/com/vision/models/Drama;->server:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setServer(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, Lflix/com/vision/models/Movie;->drama:Z

    .line 23
    .line 24
    iget-object v1, p0, Lflix/com/vision/models/Drama;->image_url:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setImage_url(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
