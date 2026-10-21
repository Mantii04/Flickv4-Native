.class public Lcom/uwetrottmann/trakt5/entities/Episode;
.super Lcom/uwetrottmann/trakt5/entities/BaseEntity;
.source "SourceFile"


# instance fields
.field public comment_count:Ljava/lang/Integer;

.field public first_aired:Lorg/threeten/bp/OffsetDateTime;

.field public ids:Lcom/uwetrottmann/trakt5/entities/EpisodeIds;

.field public number:Ljava/lang/Integer;

.field public number_abs:Ljava/lang/Integer;

.field public runtime:Ljava/lang/Integer;

.field public season:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/uwetrottmann/trakt5/entities/BaseEntity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
