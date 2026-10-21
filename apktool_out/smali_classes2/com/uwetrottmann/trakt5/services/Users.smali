.class public interface abstract Lcom/uwetrottmann/trakt5/services/Users;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addListItems(Lcom/uwetrottmann/trakt5/entities/UserSlug;Ljava/lang/String;Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lcom/uwetrottmann/trakt5/entities/SyncItems;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Ljava/lang/String;",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/SyncResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/{username}/lists/{id}/items"
    .end annotation
.end method

.method public abstract collectionMovies(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseMovie;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/collection/movies"
    .end annotation
.end method

.method public abstract collectionShows(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseShow;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/collection/shows"
    .end annotation
.end method

.method public abstract createList(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/entities/TraktList;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/entities/TraktList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/entities/TraktList;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/TraktList;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/{username}/lists"
    .end annotation
.end method

.method public abstract deleteList(Lcom/uwetrottmann/trakt5/entities/UserSlug;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "users/{username}/lists/{id}"
    .end annotation
.end method

.method public abstract deleteListItems(Lcom/uwetrottmann/trakt5/entities/UserSlug;Ljava/lang/String;Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lcom/uwetrottmann/trakt5/entities/SyncItems;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Ljava/lang/String;",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/SyncResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/{username}/lists/{id}/items/remove"
    .end annotation
.end method

.method public abstract follow(Lcom/uwetrottmann/trakt5/entities/UserSlug;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/Followed;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/{username}/follow"
    .end annotation
.end method

.method public abstract followers(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/Follower;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/followers"
    .end annotation
.end method

.method public abstract following(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/Follower;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/following"
    .end annotation
.end method

.method public abstract friends(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/Friend;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/friends"
    .end annotation
.end method

.method public abstract history(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/HistoryType;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/uwetrottmann/trakt5/enums/Extended;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/enums/HistoryType;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p6    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .param p7    # Lorg/threeten/bp/OffsetDateTime;
        .annotation runtime Lretrofit2/http/Query;
            value = "start_at"
        .end annotation
    .end param
    .param p8    # Lorg/threeten/bp/OffsetDateTime;
        .annotation runtime Lretrofit2/http/Query;
            value = "end_at"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/HistoryType;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            "Lorg/threeten/bp/OffsetDateTime;",
            "Lorg/threeten/bp/OffsetDateTime;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/HistoryEntry;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/history/{type}/{id}"
    .end annotation
.end method

.method public abstract history(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/HistoryType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/uwetrottmann/trakt5/enums/Extended;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/enums/HistoryType;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p5    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .param p6    # Lorg/threeten/bp/OffsetDateTime;
        .annotation runtime Lretrofit2/http/Query;
            value = "start_at"
        .end annotation
    .end param
    .param p7    # Lorg/threeten/bp/OffsetDateTime;
        .annotation runtime Lretrofit2/http/Query;
            value = "end_at"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/HistoryType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            "Lorg/threeten/bp/OffsetDateTime;",
            "Lorg/threeten/bp/OffsetDateTime;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/HistoryEntry;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/history/{type}"
    .end annotation
.end method

.method public abstract history(Lcom/uwetrottmann/trakt5/entities/UserSlug;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/uwetrottmann/trakt5/enums/Extended;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
    .param p5    # Lorg/threeten/bp/OffsetDateTime;
        .annotation runtime Lretrofit2/http/Query;
            value = "start_at"
        .end annotation
    .end param
    .param p6    # Lorg/threeten/bp/OffsetDateTime;
        .annotation runtime Lretrofit2/http/Query;
            value = "end_at"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            "Lorg/threeten/bp/OffsetDateTime;",
            "Lorg/threeten/bp/OffsetDateTime;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/HistoryEntry;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/history"
    .end annotation
.end method

.method public abstract listItems(Lcom/uwetrottmann/trakt5/entities/UserSlug;Ljava/lang/String;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Ljava/lang/String;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/ListEntry;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/lists/{id}/items"
    .end annotation
.end method

.method public abstract lists(Lcom/uwetrottmann/trakt5/entities/UserSlug;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/TraktList;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/lists"
    .end annotation
.end method

.method public abstract profile(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/User;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}"
    .end annotation
.end method

.method public abstract ratingsEpisodes(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/RatingsFilter;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/enums/RatingsFilter;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "rating"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/RatingsFilter;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/RatedEpisode;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/ratings/episodes{rating}"
    .end annotation
.end method

.method public abstract ratingsMovies(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/RatingsFilter;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/enums/RatingsFilter;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "rating"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/RatingsFilter;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/RatedMovie;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/ratings/movies{rating}"
    .end annotation
.end method

.method public abstract ratingsSeasons(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/RatingsFilter;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/enums/RatingsFilter;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "rating"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/RatingsFilter;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/RatedSeason;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/ratings/seasons{rating}"
    .end annotation
.end method

.method public abstract ratingsShows(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/RatingsFilter;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/enums/RatingsFilter;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "rating"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/RatingsFilter;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/RatedShow;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/ratings/shows{rating}"
    .end annotation
.end method

.method public abstract reorderListItems(Lcom/uwetrottmann/trakt5/entities/UserSlug;Ljava/lang/String;Lcom/uwetrottmann/trakt5/entities/ListItemRank;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lcom/uwetrottmann/trakt5/entities/ListItemRank;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Ljava/lang/String;",
            "Lcom/uwetrottmann/trakt5/entities/ListItemRank;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/ListReorderResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/{username}/lists/{id}/items/reorder"
    .end annotation
.end method

.method public abstract reorderLists(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/entities/ListItemRank;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/entities/ListItemRank;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/entities/ListItemRank;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/ListReorderResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/{username}/lists/reorder"
    .end annotation
.end method

.method public abstract settings()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/Settings;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/settings"
    .end annotation
.end method

.method public abstract unfollow(Lcom/uwetrottmann/trakt5/entities/UserSlug;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "users/{username}/follow"
    .end annotation
.end method

.method public abstract updateList(Lcom/uwetrottmann/trakt5/entities/UserSlug;Ljava/lang/String;Lcom/uwetrottmann/trakt5/entities/TraktList;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lcom/uwetrottmann/trakt5/entities/TraktList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Ljava/lang/String;",
            "Lcom/uwetrottmann/trakt5/entities/TraktList;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/TraktList;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "users/{username}/lists/{id}"
    .end annotation
.end method

.method public abstract watchedMovies(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseMovie;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/watched/movies"
    .end annotation
.end method

.method public abstract watchedShows(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseShow;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/watched/shows"
    .end annotation
.end method

.method public abstract watchlistEpisodes(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/WatchlistedEpisode;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/watchlist/episodes"
    .end annotation
.end method

.method public abstract watchlistMovies(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseMovie;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/watchlist/movies"
    .end annotation
.end method

.method public abstract watchlistSeasons(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/WatchlistedSeason;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/watchlist/seasons"
    .end annotation
.end method

.method public abstract watchlistShows(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/UserSlug;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
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
            "Lcom/uwetrottmann/trakt5/entities/UserSlug;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseShow;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{username}/watchlist/shows"
    .end annotation
.end method
