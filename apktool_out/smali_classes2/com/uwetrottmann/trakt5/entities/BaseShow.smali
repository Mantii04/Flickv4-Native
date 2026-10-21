.class public Lcom/uwetrottmann/trakt5/entities/BaseShow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aired:Ljava/lang/Integer;

.field public completed:Ljava/lang/Integer;

.field public hidden_seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/Season;",
            ">;"
        }
    .end annotation
.end field

.field public last_collected_at:Lorg/threeten/bp/OffsetDateTime;

.field public last_episode:Lcom/uwetrottmann/trakt5/entities/Episode;

.field public last_updated_at:Lorg/threeten/bp/OffsetDateTime;

.field public last_watched_at:Lorg/threeten/bp/OffsetDateTime;

.field public listed_at:Lorg/threeten/bp/OffsetDateTime;

.field public next_episode:Lcom/uwetrottmann/trakt5/entities/Episode;

.field public plays:Ljava/lang/Integer;

.field public reset_at:Lorg/threeten/bp/OffsetDateTime;

.field public seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/BaseSeason;",
            ">;"
        }
    .end annotation
.end field

.field public show:Lcom/uwetrottmann/trakt5/entities/Show;


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
