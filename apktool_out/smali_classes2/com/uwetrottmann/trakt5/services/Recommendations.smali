.class public interface abstract Lcom/uwetrottmann/trakt5/services/Recommendations;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dismissMovie(Ljava/lang/String;)Lretrofit2/Call;
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "recommendations/movies/{id}"
    .end annotation
.end method

.method public abstract dismissShow(Ljava/lang/String;)Lretrofit2/Call;
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "recommendations/shows/{id}"
    .end annotation
.end method

.method public abstract movies(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
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
        value = "recommendations/movies"
    .end annotation
.end method

.method public abstract shows(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
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
            "Lcom/uwetrottmann/trakt5/entities/Show;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "recommendations/shows"
    .end annotation
.end method
