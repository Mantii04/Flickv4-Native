.class public Lcom/uwetrottmann/trakt5/entities/Season;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aired_episodes:Ljava/lang/Integer;

.field public episode_count:Ljava/lang/Integer;

.field public episodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/Episode;",
            ">;"
        }
    .end annotation
.end field

.field public first_aired:Lorg/threeten/bp/OffsetDateTime;

.field public ids:Lcom/uwetrottmann/trakt5/entities/SeasonIds;

.field public network:Ljava/lang/String;

.field public number:Ljava/lang/Integer;

.field public overview:Ljava/lang/String;

.field public rating:Ljava/lang/Double;

.field public title:Ljava/lang/String;

.field public votes:Ljava/lang/Integer;


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
