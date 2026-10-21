.class public Lflix/com/vision/models/VideoSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lflix/com/vision/models/VideoSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clicked:Z

.field public external_link:Z

.field public filename:Ljava/lang/String;

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isAllDebrid:Z

.field public isChecked:Z

.field public isFvDirectStream:Z

.field public isHindi:Z

.field public isHindiDirect:Z

.field public isOffCloud:Z

.field public isPremiumSupported:Z

.field public isPremiumize:Z

.field public isRealDebrid:Z

.field public isSplitted:Z

.field public isTorbox:Z

.field public isTorrentMagnet:Z

.field public is_embed:Z

.field public is_stream_link_set:Z

.field public label:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public move_clock_right:Z

.field public originalFileName:Ljava/lang/String;

.field public quality:I

.field public rd_checked:Z

.field public referer:Ljava/lang/String;

.field public requireMXPlayer:Z

.field public requireVLC:Z

.field public streamUrl:Ljava/lang/String;

.field public streamable:Z

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lflix/com/vision/models/VideoSource$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lflix/com/vision/models/VideoSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->headers:Ljava/util/Map;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 20
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isHindi:Z

    .line 21
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isRealDebrid:Z

    .line 22
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isPremiumize:Z

    .line 23
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isAllDebrid:Z

    .line 24
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isChecked:Z

    .line 25
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->is_stream_link_set:Z

    .line 26
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isSplitted:Z

    .line 27
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 28
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->move_clock_right:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->headers:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isHindi:Z

    .line 6
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isRealDebrid:Z

    .line 7
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isPremiumize:Z

    .line 8
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isAllDebrid:Z

    .line 9
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isChecked:Z

    .line 10
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->is_stream_link_set:Z

    .line 11
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isSplitted:Z

    .line 12
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 13
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->move_clock_right:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lflix/com/vision/models/VideoSource;->streamable:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lflix/com/vision/models/VideoSource$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/models/VideoSource;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public canRealDebrid()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lflix/com/vision/models/VideoSource;->isStreamango()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lflix/com/vision/models/VideoSource;->isOpenload()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lflix/com/vision/models/VideoSource;->isRapiVideo()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lflix/com/vision/models/VideoSource;->isTheVideo()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :cond_1
    :goto_0
    and-int/2addr v0, v1

    .line 32
    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isFvDirectStream:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Lflix/com/vision/models/VideoSource;

    .line 7
    .line 8
    iget-boolean v2, v1, Lflix/com/vision/models/VideoSource;->isFvDirectStream:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p1, v1, Lflix/com/vision/models/VideoSource;->quality:I

    .line 14
    .line 15
    iget v0, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/lang/Integer;->compare(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_1
    :goto_0
    check-cast p1, Lflix/com/vision/models/VideoSource;

    .line 23
    .line 24
    iget-boolean p1, p1, Lflix/com/vision/models/VideoSource;->isFvDirectStream:Z

    .line 25
    .line 26
    invoke-static {p1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lflix/com/vision/models/VideoSource;

    .line 8
    .line 9
    iget-object p1, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public hasMultiRes()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "2embed"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public hasMultiSubtitles()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "2embed"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public hasSubtitles()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "dood"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "sbembed"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    return v1

    .line 36
    :cond_1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "vidnext"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    return v1

    .line 53
    :cond_2
    const/4 v0, 0x0

    .line 54
    return v0
.end method

.method public isDebrid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isRealDebrid:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isPremiumize:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isAllDebrid:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public isDoodlink()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v1, "d0000d"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "d0o0d"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "dood"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "dooo"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "dsvplay"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 54
    .line 55
    const-string v1, "ds2video"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 64
    .line 65
    const-string v1, "myvidplay"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    :cond_0
    const/4 v0, 0x1

    .line 74
    return v0

    .line 75
    :cond_1
    const/4 v0, 0x0

    .line 76
    return v0
.end method

.method public isFileMoonlink()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "filemoon"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public isOpenload()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v1, "openload"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "oload."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "stream"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    return v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method public isRapiVideo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v1, "rapidvideo"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "bitporno"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public isSplitable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isHindiDirect:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public isStreamango()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "streamango"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public isTheVideo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "thevideo"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public topLink()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isRealDebrid:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lflix/com/vision/models/VideoSource;->hasSubtitles()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lflix/com/vision/models/VideoSource;->hasMultiSubtitles()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "flixvision"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-boolean v0, p0, Lflix/com/vision/models/VideoSource;->isHindi:Z

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "FILESTREAM"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    return v0

    .line 52
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 53
    return v0
.end method

.method public unavailable()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/models/VideoSource;->isOpenload()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "hydrax"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "hqq"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "supervideo"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "2embed"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "unlimitedfiles"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 79
    return v0

    .line 80
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 81
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 12
    .line 13
    int-to-byte p2, p2

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
