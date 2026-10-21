.class public Lcom/uwetrottmann/trakt5/entities/Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public audio:Lcom/uwetrottmann/trakt5/enums/Audio;

.field public audio_channels:Lcom/uwetrottmann/trakt5/enums/AudioChannels;

.field public hdr:Lcom/uwetrottmann/trakt5/enums/Hdr;

.field public is3d:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3d"
    .end annotation
.end field

.field public media_type:Lcom/uwetrottmann/trakt5/enums/MediaType;

.field public resolution:Lcom/uwetrottmann/trakt5/enums/Resolution;


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
