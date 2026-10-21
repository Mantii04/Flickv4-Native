.class public Lflix/com/vision/models/Movie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = 0xcL


# instance fields
.field public anime:Z

.field public backdrop:Ljava/lang/String;

.field public backdrop_image_res_id:I

.field private caption_link:Ljava/lang/String;

.field private cast:Ljava/lang/String;

.field public certification:Ljava/lang/String;

.field public collectionId:J

.field public collectionName:Ljava/lang/String;

.field public color:I

.field private cover:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backdrop_path"
    .end annotation
.end field

.field public created_by:Ljava/lang/String;

.field public drama:Z

.field private duration:I

.field public genre_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private genres:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image_url:Ljava/lang/String;

.field public imdbID:Ljava/lang/String;

.field private info_url:Ljava/lang/String;

.field public isFavorite:Z

.field isNSFK:Z

.field public isTrakt:Z

.field public is_released:Z

.field public is_title_logo_available:Z

.field public last_air_date:Ljava/lang/String;

.field public logoUrl:Ljava/lang/String;

.field private movieId:J

.field private overview:Ljava/lang/String;

.field private plot:Ljava/lang/String;

.field private production:Ljava/lang/String;

.field private quality:Ljava/lang/String;

.field private rating:Ljava/lang/String;

.field public rawReleaseDate:Ljava/lang/String;

.field public raw_release_date:Ljava/lang/String;

.field private revenue:J

.field public season:Ljava/lang/String;

.field private season_count:I

.field public seasons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Season;",
            ">;"
        }
    .end annotation
.end field

.field private server:Ljava/lang/String;

.field public server_code:Ljava/lang/String;

.field private server_numer:Ljava/lang/String;

.field private stream_url:Ljava/lang/String;

.field private thumb:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poster_path"
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field public title_simple:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;

.field public writers:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lflix/com/vision/models/Movie;->genre_ids:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lflix/com/vision/models/Movie;->raw_release_date:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lflix/com/vision/models/Movie;->is_released:Z

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lflix/com/vision/models/Movie;->isTrakt:Z

    .line 19
    .line 20
    iput v0, p0, Lflix/com/vision/models/Movie;->type:I

    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    iput-object v1, p0, Lflix/com/vision/models/Movie;->season:Ljava/lang/String;

    .line 25
    .line 26
    iput-boolean v0, p0, Lflix/com/vision/models/Movie;->isFavorite:Z

    .line 27
    .line 28
    iput-object v1, p0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 29
    .line 30
    iput-boolean v0, p0, Lflix/com/vision/models/Movie;->isNSFK:Z

    .line 31
    .line 32
    iput-object v1, p0, Lflix/com/vision/models/Movie;->server_code:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, p0, Lflix/com/vision/models/Movie;->cast:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v1, p0, Lflix/com/vision/models/Movie;->plot:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v1, p0, Lflix/com/vision/models/Movie;->info_url:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v1, p0, Lflix/com/vision/models/Movie;->quality:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, p0, Lflix/com/vision/models/Movie;->url:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v1, p0, Lflix/com/vision/models/Movie;->title:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, p0, Lflix/com/vision/models/Movie;->rating:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lflix/com/vision/models/Movie;->seasons:Ljava/util/ArrayList;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public belongsToCollection()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lflix/com/vision/models/Movie;->collectionId:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p1, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/models/Movie;->url:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Lflix/com/vision/models/Movie;

    .line 4
    .line 5
    iget-object p1, p1, Lflix/com/vision/models/Movie;->url:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public getCast()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->cast:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->cover:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/models/Movie;->url:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object v0

    .line 13
    :catch_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/models/Movie;->duration:I

    .line 2
    .line 3
    return v0
.end method

.method public getGenres()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lflix/com/vision/models/Movie;->genre_ids:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_3

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lflix/com/vision/models/Movie;->genre_ids:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ge v0, v1, :cond_3

    .line 30
    .line 31
    iget-object v1, p0, Lflix/com/vision/models/Movie;->genre_ids:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget v2, p0, Lflix/com/vision/models/Movie;->type:I

    .line 44
    .line 45
    invoke-static {v1, v2}, LT4/f;->getGenre(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v2, v3, v1}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iput-object v2, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, p0, Lflix/com/vision/models/Movie;->genre_ids:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/lit8 v2, v2, -0x1

    .line 69
    .line 70
    if-ge v0, v2, :cond_2

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    if-le v0, v1, :cond_1

    .line 82
    .line 83
    iget-object v0, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 92
    .line 93
    const-string v3, " \u00b7 "

    .line 94
    .line 95
    invoke-static {v1, v2, v3}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 100
    .line 101
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 105
    .line 106
    return-object v0
.end method

.method public getGenres2()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lflix/com/vision/models/Movie;->genre_ids:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lflix/com/vision/models/Movie;->genre_ids:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ge v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lflix/com/vision/models/Movie;->genre_ids:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget v2, p0, Lflix/com/vision/models/Movie;->type:I

    .line 44
    .line 45
    invoke-static {v1, v2}, LT4/f;->getGenre(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v2, v3, v1}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iput-object v2, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, p0, Lflix/com/vision/models/Movie;->genre_ids:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/lit8 v2, v2, -0x1

    .line 69
    .line 70
    if-ge v0, v2, :cond_1

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 86
    .line 87
    const-string v3, ", "

    .line 88
    .line 89
    invoke-static {v1, v2, v3}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 94
    .line 95
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 99
    .line 100
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImage_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->image_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImdbID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->imdbID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfo_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->info_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMovieId()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/models/Movie;->drama:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lflix/com/vision/models/Movie;->isAnime()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lflix/com/vision/models/Movie;->url:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lflix/com/vision/models/Movie;->title:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lflix/com/vision/models/Movie;->image_url:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lflix/com/vision/models/Movie;->title:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    iget-object v0, p0, Lflix/com/vision/models/Movie;->image_url:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr v0, v1

    .line 41
    int-to-long v0, v0

    .line 42
    return-wide v0

    .line 43
    :cond_1
    iget-wide v0, p0, Lflix/com/vision/models/Movie;->movieId:J

    .line 44
    .line 45
    return-wide v0
.end method

.method public getOverview()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->overview:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlot()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->plot:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProduction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->production:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->quality:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->rating:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRevenue()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    const-string v1, "$###,###.###"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lflix/com/vision/models/Movie;->revenue:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object v0

    .line 15
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lflix/com/vision/models/Movie;->revenue:J

    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, LA/i;->n(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getSeason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->season:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "1"

    .line 6
    .line 7
    iput-object v0, p0, Lflix/com/vision/models/Movie;->season:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lflix/com/vision/models/Movie;->season:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public getSeason_count()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/models/Movie;->season_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServerNumberNew()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server_numer:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "-1"

    .line 6
    .line 7
    iput-object v0, p0, Lflix/com/vision/models/Movie;->server_numer:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server_numer:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public getServerNumberOld()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "goseries"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "1"

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "yes_series"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "solar_series"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v0, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const-string v0, "9"

    .line 37
    .line 38
    :goto_1
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 39
    .line 40
    const-string v3, "hdo_series"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const-string v0, "8"

    .line 49
    .line 50
    :cond_2
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 51
    .line 52
    const-string v3, "fmovies_series_io"

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    const-string v0, "7"

    .line 61
    .line 62
    :cond_3
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 63
    .line 64
    const-string v3, "solar_st_series"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    const-string v0, "6"

    .line 73
    .line 74
    :cond_4
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 75
    .line 76
    const-string v3, "fmovies_io"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    const-string v0, "2"

    .line 85
    .line 86
    :cond_5
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 87
    .line 88
    const-string v3, "hdo_movies"

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    const-string v0, "3"

    .line 97
    .line 98
    :cond_6
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 99
    .line 100
    const-string v3, "is_movies"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    const-string v0, "5"

    .line 109
    .line 110
    :cond_7
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 111
    .line 112
    const-string v3, "is_series"

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_8

    .line 119
    .line 120
    const-string v0, "10"

    .line 121
    .line 122
    :cond_8
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 123
    .line 124
    const-string v3, "gomovies"

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_9

    .line 131
    .line 132
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 133
    .line 134
    const-string v3, "yes_movies"

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_9

    .line 141
    .line 142
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 143
    .line 144
    const-string v3, "solar_movies"

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_a

    .line 151
    .line 152
    :cond_9
    const-string v0, "4"

    .line 153
    .line 154
    :cond_a
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 155
    .line 156
    const-string v3, "solar_st_movies"

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_b

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_b
    move-object v1, v0

    .line 166
    :goto_2
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 167
    .line 168
    const-string v2, "flenix"

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_c

    .line 175
    .line 176
    const-string v0, "0"

    .line 177
    .line 178
    return-object v0

    .line 179
    :cond_c
    return-object v1
.end method

.method public getSimpleNameClean()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSimpleNameNormal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->thumb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/models/Movie;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAnime()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->url:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object v1, p0, Lflix/com/vision/models/Movie;->url:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iput-object v1, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->url:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "9anime"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "anime"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    return v0

    .line 38
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 39
    return v0
.end method

.method public isDrama()Z
    .locals 2

    .line 1
    iget v0, p0, Lflix/com/vision/models/Movie;->type:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public isNSFK()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/models/Movie;->isNSFK:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSeries()Z
    .locals 2

    .line 1
    iget v0, p0, Lflix/com/vision/models/Movie;->type:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public parseYearfromTitle()V
    .locals 0

    return-void
.end method

.method public released()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lflix/com/vision/models/Movie;->is_released:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public setCast(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->cast:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->cover:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/models/Movie;->duration:I

    .line 2
    .line 3
    return-void
.end method

.method public setGenres(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "|"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    const-string v1, ","

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lflix/com/vision/models/Movie;->genres:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImage_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->image_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImdbID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->imdbID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInfo_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->info_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMovieId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lflix/com/vision/models/Movie;->movieId:J

    .line 2
    .line 3
    return-void
.end method

.method public setNSFK(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/models/Movie;->isNSFK:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOverview(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->overview:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlot(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->plot:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProduction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->production:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->quality:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->rating:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRawReleaseDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->rawReleaseDate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRevenue(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lflix/com/vision/models/Movie;->revenue:J

    .line 2
    .line 3
    return-void
.end method

.method public setSeason_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/models/Movie;->season_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setServerNumberNew()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "fmovies_io"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "1"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "2"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    iget-object v2, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "solar_st_movies"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v1, v0

    .line 29
    :goto_1
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "flenix"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const-string v1, "0"

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "hdo_movies"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    const-string v1, "3"

    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "is_movies"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    const-string v1, "5"

    .line 64
    .line 65
    :cond_4
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 66
    .line 67
    const-string v2, "gomovies"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 76
    .line 77
    const-string v2, "yes_movies"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 86
    .line 87
    const-string v2, "solar_movies"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    :cond_5
    const-string v1, "4"

    .line 96
    .line 97
    :cond_6
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 98
    .line 99
    const-string v2, "solar_st_series"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    const-string v1, "6"

    .line 108
    .line 109
    :cond_7
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 110
    .line 111
    const-string v2, "fmovies_series_io"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    const-string v1, "7"

    .line 120
    .line 121
    :cond_8
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 122
    .line 123
    const-string v2, "hdo_series"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_9

    .line 130
    .line 131
    const-string v1, "8"

    .line 132
    .line 133
    :cond_9
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 134
    .line 135
    const-string v2, "is_series"

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    const-string v1, "10"

    .line 144
    .line 145
    :cond_a
    iget-object v0, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 146
    .line 147
    const-string v2, "yes_series"

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_b

    .line 154
    .line 155
    const-string v1, "9"

    .line 156
    .line 157
    :cond_b
    iput-object v1, p0, Lflix/com/vision/models/Movie;->server_numer:Ljava/lang/String;

    .line 158
    .line 159
    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->thumb:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Le/N;->f(Ljava/lang/String;)Landroid/text/Spanned;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_1

    .line 27
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lflix/com/vision/models/Movie;->title_simple:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lflix/com/vision/models/Movie;->title:Ljava/lang/String;

    .line 41
    .line 42
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/models/Movie;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/Movie;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toAnime()Lflix/com/vision/models/Anime;
    .locals 2

    .line 1
    new-instance v0, Lflix/com/vision/models/Anime;

    .line 2
    .line 3
    invoke-direct {v0}, Lflix/com/vision/models/Anime;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/models/Movie;->title:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lflix/com/vision/models/Movie;->url:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lflix/com/vision/models/Anime;->url:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lflix/com/vision/models/Movie;->plot:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lflix/com/vision/models/Anime;->plot:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lflix/com/vision/models/Movie;->server:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lflix/com/vision/models/Anime;->server:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lflix/com/vision/models/Movie;->cast:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lflix/com/vision/models/Anime;->status:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lflix/com/vision/models/Movie;->image_url:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v1, v0, Lflix/com/vision/models/Anime;->image_url:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, p0, Lflix/com/vision/models/Movie;->rating:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v1, v0, Lflix/com/vision/models/Anime;->score:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, p0, Lflix/com/vision/models/Movie;->quality:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, v0, Lflix/com/vision/models/Anime;->date:Ljava/lang/String;

    .line 37
    .line 38
    return-object v0
.end method
