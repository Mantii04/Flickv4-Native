.class public Lflix/com/vision/models/torrent/TorrentFilesDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bytes:J

.field private id:I

.field private path:Ljava/lang/String;

.field private selected:I


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
.method public getBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->bytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelected()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->selected:I

    .line 2
    .line 3
    return v0
.end method

.method public setBytes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->bytes:J

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSelected(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->selected:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TorrentFilesDTO{id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->id:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", path=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->path:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', bytes="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->bytes:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", selected="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lflix/com/vision/models/torrent/TorrentFilesDTO;->selected:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x7d

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
