.class public Lcom/uwetrottmann/trakt5/entities/PlaybackResponse;
.super Lcom/uwetrottmann/trakt5/entities/GenericProgress;
.source "SourceFile"


# instance fields
.field public action:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public paused_at:Lorg/threeten/bp/OffsetDateTime;

.field public sharing:Lcom/uwetrottmann/trakt5/entities/ShareSettings;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/uwetrottmann/trakt5/entities/GenericProgress;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
