.class public Lflix/com/vision/models/torrent/UserTorrent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public clicked:Z

.field public download:Ljava/lang/String;

.field public file_id:Ljava/lang/String;

.field public file_size_label:Ljava/lang/String;

.field public filename:Ljava/lang/String;

.field public filesize:J

.field public generated_time:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public is_all_debrid:Z

.field public is_premiumize:Z

.field public is_real_debrid:Z

.field public link:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public source_type:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

.field public src:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;

.field public streamable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/models/torrent/UserTorrent;->src:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public toVideoSource()Lflix/com/vision/models/VideoSource;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/models/torrent/UserTorrent;->streamable:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Lflix/com/vision/models/VideoSource;

    .line 8
    .line 9
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lflix/com/vision/models/torrent/UserTorrent;->download:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lflix/com/vision/models/torrent/UserTorrent;->source_type:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 17
    .line 18
    sget-object v2, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->b:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    iput-boolean v3, v0, Lflix/com/vision/models/VideoSource;->isRealDebrid:Z

    .line 24
    .line 25
    :cond_1
    sget-object v2, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->e:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 26
    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    iput-boolean v3, v0, Lflix/com/vision/models/VideoSource;->isPremiumize:Z

    .line 30
    .line 31
    :cond_2
    iput-boolean v3, v0, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 32
    .line 33
    iget-wide v1, p0, Lflix/com/vision/models/torrent/UserTorrent;->filesize:J

    .line 34
    .line 35
    invoke-static {v1, v2}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "[PREMIUMIZE][USER TORRENT] ["

    .line 40
    .line 41
    const-string v3, "]"

    .line 42
    .line 43
    invoke-static {v2, v1, v3}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 48
    .line 49
    const/16 v1, 0x3e8

    .line 50
    .line 51
    iput v1, v0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 52
    .line 53
    invoke-static {v0}, Lflix/com/vision/activities/LinksActivity;->setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method
