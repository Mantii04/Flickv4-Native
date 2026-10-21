.class public interface abstract Lcom/uwetrottmann/trakt5/services/Sync;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addItemsToCollection(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/SyncItems;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/SyncResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sync/collection"
    .end annotation
.end method

.method public abstract addItemsToWatchedHistory(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/SyncItems;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/SyncResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sync/history"
    .end annotation
.end method

.method public abstract addItemsToWatchlist(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/SyncItems;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/SyncResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sync/watchlist"
    .end annotation
.end method

.method public abstract addRatings(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/SyncItems;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/SyncResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sync/ratings"
    .end annotation
.end method

.method public abstract collectionMovies(Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseMovie;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/collection/movies"
    .end annotation
.end method

.method public abstract collectionShows(Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseShow;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/collection/shows"
    .end annotation
.end method

.method public abstract deleteItemsFromCollection(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/SyncItems;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/SyncResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sync/collection/remove"
    .end annotation
.end method

.method public abstract deleteItemsFromWatchedHistory(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/SyncItems;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/SyncResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sync/history/remove"
    .end annotation
.end method

.method public abstract deleteItemsFromWatchlist(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/SyncItems;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/SyncResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sync/watchlist/remove"
    .end annotation
.end method

.method public abstract deleteRatings(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/SyncItems;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/SyncResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sync/ratings/remove"
    .end annotation
.end method

.method public abstract getPlayback(Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/PlaybackResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/playback"
    .end annotation
.end method

.method public abstract getPlaybackEpisodes(Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/PlaybackResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/playback/episodes"
    .end annotation
.end method

.method public abstract getPlaybackMovies(Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/PlaybackResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/playback/movies"
    .end annotation
.end method

.method public abstract lastActivities()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/LastActivities;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/last_activities"
    .end annotation
.end method

.method public abstract ratingsEpisodes(Lcom/uwetrottmann/trakt5/enums/RatingsFilter;Lcom/uwetrottmann/trakt5/enums/Extended;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/RatingsFilter;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "rating"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/RatingsFilter;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/RatedEpisode;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/ratings/episodes{rating}"
    .end annotation
.end method

.method public abstract ratingsMovies(Lcom/uwetrottmann/trakt5/enums/RatingsFilter;Lcom/uwetrottmann/trakt5/enums/Extended;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/RatingsFilter;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "rating"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/RatingsFilter;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/RatedMovie;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/ratings/movies{rating}"
    .end annotation
.end method

.method public abstract ratingsSeasons(Lcom/uwetrottmann/trakt5/enums/RatingsFilter;Lcom/uwetrottmann/trakt5/enums/Extended;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/RatingsFilter;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "rating"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/RatingsFilter;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/RatedSeason;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/ratings/seasons{rating}"
    .end annotation
.end method

.method public abstract ratingsShows(Lcom/uwetrottmann/trakt5/enums/RatingsFilter;Lcom/uwetrottmann/trakt5/enums/Extended;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/RatingsFilter;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "rating"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/RatingsFilter;",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/RatedShow;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/ratings/shows{rating}"
    .end annotation
.end method

.method public abstract watchedMovies(Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseMovie;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/watched/movies"
    .end annotation
.end method

.method public abstract watchedShows(Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseShow;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/watched/shows"
    .end annotation
.end method

.method public abstract watchlistEpisodes(Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/WatchlistedEpisode;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/watchlist/episodes"
    .end annotation
.end method

.method public abstract watchlistMovies(Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseMovie;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/watchlist/movies"
    .end annotation
.end method

.method public abstract watchlistSeasons(Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/WatchlistedSeason;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/watchlist/seasons"
    .end annotation
.end method

.method public abstract watchlistShows(Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/enums/Extended;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "extended"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/enums/Extended;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseShow;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sync/watchlist/shows"
    .end annotation
.end method
