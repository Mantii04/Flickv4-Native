.class public Landroidx/media3/datasource/MediaDataSourceAdapter;
.super Landroidx/media3/datasource/BaseDataSource;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private bytesRemaining:J

.field private final mediaDataSource:Landroid/media/MediaDataSource;

.field private opened:Z

.field private position:J

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/media/MediaDataSource;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->uri:Landroid/net/Uri;

    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->opened:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->opened:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->uri:Landroid/net/Uri;

    .line 4
    .line 5
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->position:J

    .line 6
    .line 7
    iput-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/MediaDataSource;->getSize()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, -0x1

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/media/MediaDataSource;->getSize()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    cmp-long v0, v0, v4

    .line 33
    .line 34
    if-gtz v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    .line 38
    .line 39
    const/16 v0, 0x7d8

    .line 40
    .line 41
    invoke-direct {p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/media/MediaDataSource;->getSize()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    cmp-long v0, v0, v2

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iput-wide v2, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/media/MediaDataSource;->getSize()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    iget-wide v4, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    .line 65
    .line 66
    sub-long/2addr v0, v4

    .line 67
    iput-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 68
    .line 69
    :goto_1
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    .line 70
    .line 71
    cmp-long v4, v0, v2

    .line 72
    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    iget-wide v4, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 76
    .line 77
    cmp-long v6, v4, v2

    .line 78
    .line 79
    if-nez v6, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    :goto_2
    iput-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 87
    .line 88
    :cond_4
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->opened:Z

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 92
    .line 93
    .line 94
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    .line 95
    .line 96
    cmp-long p1, v0, v2

    .line 97
    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    return-wide v0

    .line 101
    :cond_5
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 102
    .line 103
    return-wide v0
.end method

.method public read([BII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/DataSourceException;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    return v3

    .line 15
    :cond_1
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    cmp-long v2, v0, v4

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    :goto_0
    move v11, p3

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    int-to-long v6, p3

    .line 24
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    long-to-int p3, v0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    :try_start_0
    iget-object v6, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    .line 31
    .line 32
    iget-wide v7, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    .line 33
    .line 34
    move-object v9, p1

    .line 35
    move v10, p2

    .line 36
    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaDataSource;->readAt(J[BII)I

    .line 37
    .line 38
    .line 39
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-ne p1, v3, :cond_3

    .line 41
    .line 42
    return v3

    .line 43
    :cond_3
    iget-wide p2, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    .line 44
    .line 45
    int-to-long v0, p1

    .line 46
    add-long/2addr p2, v0

    .line 47
    iput-wide p2, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    .line 48
    .line 49
    iget-wide p2, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 50
    .line 51
    cmp-long v2, p2, v4

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    sub-long/2addr p2, v0

    .line 56
    iput-wide p2, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 57
    .line 58
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    .line 59
    .line 60
    .line 61
    return p1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    move-object p1, v0

    .line 64
    new-instance p2, Landroidx/media3/datasource/DataSourceException;

    .line 65
    .line 66
    const/16 p3, 0x7d0

    .line 67
    .line 68
    invoke-direct {p2, p1, p3}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 69
    .line 70
    .line 71
    throw p2
.end method
