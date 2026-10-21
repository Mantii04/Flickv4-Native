.class public Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public audio:Lcom/uwetrottmann/trakt5/enums/Audio;

.field public audio_channels:Lcom/uwetrottmann/trakt5/enums/AudioChannels;

.field public collected_at:Lorg/threeten/bp/OffsetDateTime;

.field public hdr:Lcom/uwetrottmann/trakt5/enums/Hdr;

.field public ids:Lcom/uwetrottmann/trakt5/entities/EpisodeIds;

.field public is3d:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3d"
    .end annotation
.end field

.field public media_type:Lcom/uwetrottmann/trakt5/enums/MediaType;

.field public number:Ljava/lang/Integer;

.field public rated_at:Lorg/threeten/bp/OffsetDateTime;

.field public rating:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public resolution:Lcom/uwetrottmann/trakt5/enums/Resolution;

.field public season:Ljava/lang/Integer;

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
.method public audio(Lcom/uwetrottmann/trakt5/enums/Audio;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->audio:Lcom/uwetrottmann/trakt5/enums/Audio;

    .line 2
    .line 3
    return-object p0
.end method

.method public audioChannels(Lcom/uwetrottmann/trakt5/enums/AudioChannels;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->audio_channels:Lcom/uwetrottmann/trakt5/enums/AudioChannels;

    .line 2
    .line 3
    return-object p0
.end method

.method public collectedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->collected_at:Lorg/threeten/bp/OffsetDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public hdr(Lcom/uwetrottmann/trakt5/enums/Hdr;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->hdr:Lcom/uwetrottmann/trakt5/enums/Hdr;

    .line 2
    .line 3
    return-object p0
.end method

.method public id(Lcom/uwetrottmann/trakt5/entities/EpisodeIds;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->ids:Lcom/uwetrottmann/trakt5/entities/EpisodeIds;

    .line 2
    .line 3
    return-object p0
.end method

.method public is3d(Ljava/lang/Boolean;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->is3d:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public mediaType(Lcom/uwetrottmann/trakt5/enums/MediaType;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->media_type:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 2
    .line 3
    return-object p0
.end method

.method public number(I)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->number:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public ratedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->rated_at:Lorg/threeten/bp/OffsetDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public rating(Lcom/uwetrottmann/trakt5/enums/Rating;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->rating:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public resolution(Lcom/uwetrottmann/trakt5/enums/Resolution;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->resolution:Lcom/uwetrottmann/trakt5/enums/Resolution;

    .line 2
    .line 3
    return-object p0
.end method

.method public season(I)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->season:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public watchedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->watched_at:Lorg/threeten/bp/OffsetDateTime;

    .line 2
    .line 3
    return-object p0
.end method
