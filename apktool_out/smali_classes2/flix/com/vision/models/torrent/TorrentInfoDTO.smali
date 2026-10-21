.class public Lflix/com/vision/models/torrent/TorrentInfoDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private added:Ljava/lang/String;

.field private bytes:J

.field private ended:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflix/com/vision/models/torrent/TorrentFilesDTO;",
            ">;"
        }
    .end annotation
.end field

.field private hash:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originalBytes:J

.field private originalFilename:Ljava/lang/String;

.field private progress:I

.field private seeders:I

.field private speed:I

.field private split:I

.field private status:Ljava/lang/String;


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
.method public getAdded()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->added:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->bytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEnded()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->ended:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->filename:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lflix/com/vision/models/torrent/TorrentFilesDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->files:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->hash:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->links:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginalBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->originalBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOriginalFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->originalFilename:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->progress:I

    .line 2
    .line 3
    return v0
.end method

.method public getSeeders()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->seeders:I

    .line 2
    .line 3
    return v0
.end method

.method public getSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->speed:I

    .line 2
    .line 3
    return v0
.end method

.method public getSplit()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->split:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdded(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->added:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBytes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->bytes:J

    .line 2
    .line 3
    return-void
.end method

.method public setEnded(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->ended:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->filename:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflix/com/vision/models/torrent/TorrentFilesDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->files:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->hash:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLinks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->links:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setOriginalBytes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->originalBytes:J

    .line 2
    .line 3
    return-void
.end method

.method public setOriginalFilename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->originalFilename:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->progress:I

    .line 2
    .line 3
    return-void
.end method

.method public setSeeders(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->seeders:I

    .line 2
    .line 3
    return-void
.end method

.method public setSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->speed:I

    .line 2
    .line 3
    return-void
.end method

.method public setSplit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->split:I

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->status:Ljava/lang/String;

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
    const-string v1, "TorrentInfoDTO{id=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->id:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', filename=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->filename:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', original_filename=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->originalFilename:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', hash=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->hash:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', bytes="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->bytes:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", original_bytes="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->originalBytes:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", host=\'"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->host:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "\', split="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->split:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", progress="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->progress:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", status=\'"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->status:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, "\', added=\'"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->added:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, "\', files="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->files:Ljava/util/List;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", links="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->links:Ljava/util/List;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", ended=\'"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->ended:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, "\', speed="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->speed:I

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", seeders="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v1, p0, Lflix/com/vision/models/torrent/TorrentInfoDTO;->seeders:I

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const/16 v1, 0x7d

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    return-object v0
.end method
