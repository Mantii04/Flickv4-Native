.class public Lcom/uwetrottmann/trakt5/entities/SyncSeason;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public collected_at:Lorg/threeten/bp/OffsetDateTime;

.field public episodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncEpisode;",
            ">;"
        }
    .end annotation
.end field

.field public number:Ljava/lang/Integer;

.field public rated_at:Lorg/threeten/bp/OffsetDateTime;

.field public rating:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public watched_at:Lorg/threeten/bp/OffsetDateTime;


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
.method public collectedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncSeason;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncSeason;->collected_at:Lorg/threeten/bp/OffsetDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public episodes(Lcom/uwetrottmann/trakt5/entities/SyncEpisode;)Lcom/uwetrottmann/trakt5/entities/SyncSeason;
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/uwetrottmann/trakt5/entities/SyncSeason;->episodes(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncSeason;

    move-result-object p1

    return-object p1
.end method

.method public episodes(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncSeason;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncEpisode;",
            ">;)",
            "Lcom/uwetrottmann/trakt5/entities/SyncSeason;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncSeason;->episodes:Ljava/util/List;

    return-object p0
.end method

.method public number(I)Lcom/uwetrottmann/trakt5/entities/SyncSeason;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncSeason;->number:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public ratedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncSeason;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncSeason;->rated_at:Lorg/threeten/bp/OffsetDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public rating(Lcom/uwetrottmann/trakt5/enums/Rating;)Lcom/uwetrottmann/trakt5/entities/SyncSeason;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncSeason;->rating:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public watchedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncSeason;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncSeason;->watched_at:Lorg/threeten/bp/OffsetDateTime;

    .line 2
    .line 3
    return-object p0
.end method
