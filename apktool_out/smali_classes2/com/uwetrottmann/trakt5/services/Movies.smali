.class public interface abstract Lcom/uwetrottmann/trakt5/services/Movies;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract comments(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p4    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/Comment;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "movies/{id}/comments"
    .end annotation
.end method

.method public abstract people(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/Credits;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "movies/{id}/people"
    .end annotation
.end method

.method public abstract popular(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/Movie;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "movies/popular"
    .end annotation
.end method

.method public abstract ratings(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/Ratings;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "movies/{id}/ratings"
    .end annotation
.end method

.method public abstract stats(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/Stats;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "movies/{id}/stats"
    .end annotation
.end method

.method public abstract summary(Ljava/lang/String;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/Movie;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "movies/{id}"
    .end annotation
.end method

.method public abstract translation(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "language"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/MovieTranslation;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "movies/{id}/translations/{language}"
    .end annotation
.end method

.method public abstract translations(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/MovieTranslation;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "movies/{id}/translations"
    .end annotation
.end method

.method public abstract trending(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/TrendingMovie;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "movies/trending"
    .end annotation
.end method
