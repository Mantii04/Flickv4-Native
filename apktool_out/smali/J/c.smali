.class public final synthetic LJ/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LJ/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, LJ/c;->b:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Ljava/io/File;

    .line 8
    .line 9
    check-cast p2, Ljava/io/File;

    .line 10
    .line 11
    sget v1, Lflix/com/vision/activities/ModernFilePickerActivity;->q:I

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    :goto_0
    return v0

    .line 53
    :pswitch_0
    check-cast p1, Lb1/d;

    .line 54
    .line 55
    check-cast p2, Lb1/d;

    .line 56
    .line 57
    iget-wide v0, p1, Lb1/d;->b:J

    .line 58
    .line 59
    iget-wide p1, p2, Lb1/d;->b:J

    .line 60
    .line 61
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    :pswitch_1
    check-cast p1, Lb1/e;

    .line 67
    .line 68
    check-cast p2, Lb1/e;

    .line 69
    .line 70
    iget-object p1, p1, Lb1/e;->a:Lb1/f;

    .line 71
    .line 72
    iget p1, p1, Lb1/f;->b:I

    .line 73
    .line 74
    iget-object p2, p2, Lb1/e;->a:Lb1/f;

    .line 75
    .line 76
    iget p2, p2, Lb1/f;->b:I

    .line 77
    .line 78
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1

    .line 83
    :pswitch_2
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    .line 84
    .line 85
    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    .line 86
    .line 87
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->a(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    return p1

    .line 92
    :pswitch_3
    check-cast p1, Landroidx/media3/datasource/cache/CacheSpan;

    .line 93
    .line 94
    check-cast p2, Landroidx/media3/datasource/cache/CacheSpan;

    .line 95
    .line 96
    invoke-static {p1, p2}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->a(Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    return p1

    .line 101
    :pswitch_4
    check-cast p1, Ljava/io/File;

    .line 102
    .line 103
    check-cast p2, Ljava/io/File;

    .line 104
    .line 105
    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->c(Ljava/io/File;Ljava/io/File;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    return p1

    .line 110
    :pswitch_5
    check-cast p1, Ljava/io/File;

    .line 111
    .line 112
    check-cast p2, Ljava/io/File;

    .line 113
    .line 114
    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->d(Ljava/io/File;Ljava/io/File;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    return p1

    .line 119
    :pswitch_6
    check-cast p1, LT0/d;

    .line 120
    .line 121
    check-cast p2, LT0/d;

    .line 122
    .line 123
    iget p2, p2, LT0/d;->b:I

    .line 124
    .line 125
    iget p1, p1, LT0/d;->b:I

    .line 126
    .line 127
    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    return p1

    .line 132
    :pswitch_7
    check-cast p1, [B

    .line 133
    .line 134
    check-cast p2, [B

    .line 135
    .line 136
    array-length v1, p1

    .line 137
    array-length v2, p2

    .line 138
    if-eq v1, v2, :cond_2

    .line 139
    .line 140
    array-length p1, p1

    .line 141
    array-length p2, p2

    .line 142
    sub-int/2addr p1, p2

    .line 143
    goto :goto_2

    .line 144
    :cond_2
    const/4 v1, 0x0

    .line 145
    move v2, v1

    .line 146
    :goto_1
    array-length v3, p1

    .line 147
    if-ge v2, v3, :cond_4

    .line 148
    .line 149
    aget-byte v3, p1, v2

    .line 150
    .line 151
    aget-byte v4, p2, v2

    .line 152
    .line 153
    if-eq v3, v4, :cond_3

    .line 154
    .line 155
    sub-int p1, v3, v4

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    add-int/2addr v2, v0

    .line 159
    goto :goto_1

    .line 160
    :cond_4
    move p1, v1

    .line 161
    :goto_2
    return p1

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
