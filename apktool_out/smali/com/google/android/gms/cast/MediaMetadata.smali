.class public Lcom/google/android/gms/cast/MediaMetadata;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaMetadata$Writer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:[Ljava/lang/String;

.field public static final m:Lcom/google/android/gms/cast/zzcd;


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final e:Landroid/os/Bundle;

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "ISO-8601 date String"

    .line 2
    .line 3
    const-string v5, "Time in milliseconds as long"

    .line 4
    .line 5
    const-string v0, "none"

    .line 6
    .line 7
    const-string v1, "String"

    .line 8
    .line 9
    const-string v2, "int"

    .line 10
    .line 11
    const-string v3, "double"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->j:[Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/cast/zzce;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/android/gms/cast/zzce;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/gms/cast/zzcd;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/google/android/gms/cast/zzcd;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "com.google.android.gms.cast.metadata.CREATION_DATE"

    .line 32
    .line 33
    const-string v2, "creationDateTime"

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 37
    .line 38
    .line 39
    const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 40
    .line 41
    const-string v2, "releaseDate"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 44
    .line 45
    .line 46
    const-string v1, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    .line 47
    .line 48
    const-string v2, "originalAirdate"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 51
    .line 52
    .line 53
    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    .line 54
    .line 55
    const-string v2, "title"

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 59
    .line 60
    .line 61
    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 62
    .line 63
    const-string v2, "subtitle"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 66
    .line 67
    .line 68
    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    .line 69
    .line 70
    const-string v2, "artist"

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 73
    .line 74
    .line 75
    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 76
    .line 77
    const-string v2, "albumArtist"

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 80
    .line 81
    .line 82
    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    .line 83
    .line 84
    const-string v2, "albumName"

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 87
    .line 88
    .line 89
    const-string v1, "com.google.android.gms.cast.metadata.COMPOSER"

    .line 90
    .line 91
    const-string v2, "composer"

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 94
    .line 95
    .line 96
    const-string v1, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    .line 97
    .line 98
    const-string v2, "discNumber"

    .line 99
    .line 100
    const/4 v4, 0x2

    .line 101
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 102
    .line 103
    .line 104
    const-string v1, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    .line 105
    .line 106
    const-string v2, "trackNumber"

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 109
    .line 110
    .line 111
    const-string v1, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    .line 112
    .line 113
    const-string v2, "season"

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 116
    .line 117
    .line 118
    const-string v1, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    .line 119
    .line 120
    const-string v2, "episode"

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 123
    .line 124
    .line 125
    const-string v1, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    .line 126
    .line 127
    const-string v2, "seriesTitle"

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 130
    .line 131
    .line 132
    const-string v1, "com.google.android.gms.cast.metadata.STUDIO"

    .line 133
    .line 134
    const-string v2, "studio"

    .line 135
    .line 136
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 137
    .line 138
    .line 139
    const-string v1, "com.google.android.gms.cast.metadata.WIDTH"

    .line 140
    .line 141
    const-string v2, "width"

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 144
    .line 145
    .line 146
    const-string v1, "com.google.android.gms.cast.metadata.HEIGHT"

    .line 147
    .line 148
    const-string v2, "height"

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 151
    .line 152
    .line 153
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    .line 154
    .line 155
    const-string v2, "location"

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 158
    .line 159
    .line 160
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    .line 161
    .line 162
    const-string v2, "latitude"

    .line 163
    .line 164
    const/4 v5, 0x3

    .line 165
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 166
    .line 167
    .line 168
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    .line 169
    .line 170
    const-string v2, "longitude"

    .line 171
    .line 172
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 173
    .line 174
    .line 175
    const-string v1, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    .line 176
    .line 177
    const-string v2, "sectionDuration"

    .line 178
    .line 179
    const/4 v5, 0x5

    .line 180
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 181
    .line 182
    .line 183
    const-string v1, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    .line 184
    .line 185
    const-string v2, "sectionStartTimeInMedia"

    .line 186
    .line 187
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 188
    .line 189
    .line 190
    const-string v1, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    .line 191
    .line 192
    const-string v2, "sectionStartAbsoluteTime"

    .line 193
    .line 194
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 195
    .line 196
    .line 197
    const-string v1, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    .line 198
    .line 199
    const-string v2, "sectionStartTimeInContainer"

    .line 200
    .line 201
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 202
    .line 203
    .line 204
    const-string v1, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    .line 205
    .line 206
    const-string v2, "queueItemId"

    .line 207
    .line 208
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 209
    .line 210
    .line 211
    const-string v1, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    .line 212
    .line 213
    const-string v2, "bookTitle"

    .line 214
    .line 215
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 216
    .line 217
    .line 218
    const-string v1, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    .line 219
    .line 220
    const-string v2, "chapterNumber"

    .line 221
    .line 222
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 223
    .line 224
    .line 225
    const-string v1, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    .line 226
    .line 227
    const-string v2, "chapterTitle"

    .line 228
    .line 229
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzcd;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/zzcd;

    .line 230
    .line 231
    .line 232
    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->m:Lcom/google/android/gms/cast/zzcd;

    .line 233
    .line 234
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/MediaMetadata$Writer;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/MediaMetadata$Writer;-><init>(Lcom/google/android/gms/cast/MediaMetadata;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaMetadata;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    iput p3, p0, Lcom/google/android/gms/cast/MediaMetadata;->f:I

    return-void
.end method

.method public static a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    instance-of v4, v2, Landroid/os/Bundle;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    instance-of v4, v3, Landroid/os/Bundle;

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    move-object v4, v2

    .line 49
    check-cast v4, Landroid/os/Bundle;

    .line 50
    .line 51
    move-object v5, v3

    .line 52
    check-cast v5, Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-static {v4, v5}, Lcom/google/android/gms/cast/MediaMetadata;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    :cond_2
    if-nez v2, :cond_3

    .line 61
    .line 62
    if-nez v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 78
    return p0

    .line 79
    :cond_5
    const/4 p0, 0x1

    .line 80
    return p0
.end method

.method public static throwIfWrongType(Ljava/lang/String;I)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/cast/MediaMetadata;->m:Lcom/google/android/gms/cast/zzcd;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/zzcd;->zza(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    sget-object v1, Lcom/google/android/gms/cast/MediaMetadata;->j:[Ljava/lang/String;

    .line 21
    .line 22
    aget-object p1, v1, p1

    .line 23
    .line 24
    const-string v1, "Value for "

    .line 25
    .line 26
    const-string v2, " must be a "

    .line 27
    .line 28
    invoke-static {v1, p0, v2, p1}, Lb/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p1, "null and empty keys are not allowed"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method


# virtual methods
.method public addImage(Lcom/google/android/gms/common/images/WebImage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/cast/MediaMetadata;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaMetadata;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/android/gms/cast/MediaMetadata;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    :goto_0
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->f:I

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->throwIfWrongType(Ljava/lang/String;I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getTimeMillis(Ljava/lang/String;)J
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->throwIfWrongType(Ljava/lang/String;I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public hasImages()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_1
    add-int/2addr v0, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->b:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v1, v0

    .line 52
    return v1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->throwIfWrongType(Ljava/lang/String;I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaMetadata;->getMediaType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final zza()Lorg/json/JSONObject;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v2, "metadataType"

    .line 9
    .line 10
    iget v3, v0, Lcom/google/android/gms/cast/MediaMetadata;->f:I

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    iget-object v2, v0, Lcom/google/android/gms/cast/MediaMetadata;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/media/zza;->zzc(Ljava/util/List;)Lorg/json/JSONArray;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    :try_start_1
    const-string v3, "images"

    .line 28
    .line 29
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    .line 31
    .line 32
    :catch_1
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iget v3, v0, Lcom/google/android/gms/cast/MediaMetadata;->f:I

    .line 38
    .line 39
    const-string v4, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 40
    .line 41
    const/4 v5, 0x5

    .line 42
    const/4 v6, 0x4

    .line 43
    const/4 v7, 0x3

    .line 44
    const/4 v8, 0x2

    .line 45
    const/4 v9, 0x1

    .line 46
    const-string v10, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 47
    .line 48
    const-string v11, "com.google.android.gms.cast.metadata.TITLE"

    .line 49
    .line 50
    if-eqz v3, :cond_6

    .line 51
    .line 52
    if-eq v3, v9, :cond_5

    .line 53
    .line 54
    if-eq v3, v8, :cond_4

    .line 55
    .line 56
    if-eq v3, v7, :cond_3

    .line 57
    .line 58
    if-eq v3, v6, :cond_2

    .line 59
    .line 60
    if-eq v3, v5, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v3, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    .line 64
    .line 65
    const-string v4, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    .line 66
    .line 67
    const-string v12, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    .line 68
    .line 69
    filled-new-array {v4, v12, v11, v3, v10}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const-string v14, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    .line 78
    .line 79
    const-string v15, "com.google.android.gms.cast.metadata.WIDTH"

    .line 80
    .line 81
    const-string v10, "com.google.android.gms.cast.metadata.TITLE"

    .line 82
    .line 83
    const-string v11, "com.google.android.gms.cast.metadata.ARTIST"

    .line 84
    .line 85
    const-string v12, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    .line 86
    .line 87
    const-string v13, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    .line 88
    .line 89
    const-string v16, "com.google.android.gms.cast.metadata.HEIGHT"

    .line 90
    .line 91
    const-string v17, "com.google.android.gms.cast.metadata.CREATION_DATE"

    .line 92
    .line 93
    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const-string v14, "com.google.android.gms.cast.metadata.COMPOSER"

    .line 102
    .line 103
    const-string v15, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    .line 104
    .line 105
    const-string v10, "com.google.android.gms.cast.metadata.TITLE"

    .line 106
    .line 107
    const-string v11, "com.google.android.gms.cast.metadata.ARTIST"

    .line 108
    .line 109
    const-string v12, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    .line 110
    .line 111
    const-string v13, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 112
    .line 113
    const-string v16, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    .line 114
    .line 115
    const-string v17, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 116
    .line 117
    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    const-string v3, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    .line 126
    .line 127
    const-string v4, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    .line 128
    .line 129
    const-string v10, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    .line 130
    .line 131
    const-string v12, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    .line 132
    .line 133
    filled-new-array {v11, v3, v4, v10, v12}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    const-string v3, "com.google.android.gms.cast.metadata.STUDIO"

    .line 142
    .line 143
    filled-new-array {v11, v3, v10, v4}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_6
    const-string v3, "com.google.android.gms.cast.metadata.ARTIST"

    .line 152
    .line 153
    filled-new-array {v11, v3, v10, v4}, [Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :goto_0
    const-string v3, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    .line 161
    .line 162
    const-string v4, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    .line 163
    .line 164
    const-string v10, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    .line 165
    .line 166
    const-string v11, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    .line 167
    .line 168
    const-string v12, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    .line 169
    .line 170
    filled-new-array {v10, v3, v4, v11, v12}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 185
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    .line 186
    .line 187
    if-eqz v3, :cond_c

    .line 188
    .line 189
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    check-cast v3, Ljava/lang/String;

    .line 194
    .line 195
    if-eqz v3, :cond_7

    .line 196
    .line 197
    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-eqz v10, :cond_7

    .line 202
    .line 203
    sget-object v10, Lcom/google/android/gms/cast/MediaMetadata;->m:Lcom/google/android/gms/cast/zzcd;

    .line 204
    .line 205
    invoke-virtual {v10, v3}, Lcom/google/android/gms/cast/zzcd;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    if-eqz v11, :cond_7

    .line 210
    .line 211
    invoke-virtual {v10, v3}, Lcom/google/android/gms/cast/zzcd;->zza(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-eq v10, v9, :cond_b

    .line 216
    .line 217
    if-eq v10, v8, :cond_a

    .line 218
    .line 219
    if-eq v10, v7, :cond_9

    .line 220
    .line 221
    if-eq v10, v6, :cond_b

    .line 222
    .line 223
    if-eq v10, v5, :cond_8

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_8
    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 227
    .line 228
    .line 229
    move-result-wide v3

    .line 230
    invoke-static {v3, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    .line 231
    .line 232
    .line 233
    move-result-wide v3

    .line 234
    invoke-virtual {v1, v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_9
    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 239
    .line 240
    .line 241
    move-result-wide v3

    .line 242
    invoke-virtual {v1, v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_a
    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    invoke-virtual {v1, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_b
    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v1, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_c
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    :cond_d
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_10

    .line 275
    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    check-cast v3, Ljava/lang/String;

    .line 281
    .line 282
    const-string v5, "com.google."

    .line 283
    .line 284
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-nez v5, :cond_d

    .line 289
    .line 290
    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    instance-of v6, v5, Ljava/lang/String;

    .line 295
    .line 296
    if-eqz v6, :cond_e

    .line 297
    .line 298
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_e
    instance-of v6, v5, Ljava/lang/Integer;

    .line 303
    .line 304
    if-eqz v6, :cond_f

    .line 305
    .line 306
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_f
    instance-of v6, v5, Ljava/lang/Double;

    .line 311
    .line 312
    if-eqz v6, :cond_d

    .line 313
    .line 314
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 315
    .line 316
    .line 317
    goto :goto_2

    .line 318
    :catch_2
    :cond_10
    return-object v1
.end method

.method public final zzc(Lorg/json/JSONObject;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "metadataType"

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaMetadata;->clear()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iput v3, v0, Lcom/google/android/gms/cast/MediaMetadata;->f:I

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iput v3, v0, Lcom/google/android/gms/cast/MediaMetadata;->f:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    const-string v3, "images"

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaMetadata;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-static {v4, v3}, Lcom/google/android/gms/cast/internal/media/zza;->zzd(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iget v4, v0, Lcom/google/android/gms/cast/MediaMetadata;->f:I

    .line 38
    .line 39
    const-string v5, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 40
    .line 41
    const/4 v6, 0x5

    .line 42
    const/4 v7, 0x4

    .line 43
    const/4 v8, 0x3

    .line 44
    const/4 v9, 0x2

    .line 45
    const/4 v10, 0x1

    .line 46
    const-string v11, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 47
    .line 48
    const-string v12, "com.google.android.gms.cast.metadata.TITLE"

    .line 49
    .line 50
    if-eqz v4, :cond_6

    .line 51
    .line 52
    if-eq v4, v10, :cond_5

    .line 53
    .line 54
    if-eq v4, v9, :cond_4

    .line 55
    .line 56
    if-eq v4, v8, :cond_3

    .line 57
    .line 58
    if-eq v4, v7, :cond_2

    .line 59
    .line 60
    if-eq v4, v6, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v4, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    .line 64
    .line 65
    const-string v5, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    .line 66
    .line 67
    const-string v13, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    .line 68
    .line 69
    filled-new-array {v5, v13, v12, v4, v11}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const-string v15, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    .line 78
    .line 79
    const-string v16, "com.google.android.gms.cast.metadata.WIDTH"

    .line 80
    .line 81
    const-string v11, "com.google.android.gms.cast.metadata.TITLE"

    .line 82
    .line 83
    const-string v12, "com.google.android.gms.cast.metadata.ARTIST"

    .line 84
    .line 85
    const-string v13, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    .line 86
    .line 87
    const-string v14, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    .line 88
    .line 89
    const-string v17, "com.google.android.gms.cast.metadata.HEIGHT"

    .line 90
    .line 91
    const-string v18, "com.google.android.gms.cast.metadata.CREATION_DATE"

    .line 92
    .line 93
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const-string v15, "com.google.android.gms.cast.metadata.COMPOSER"

    .line 102
    .line 103
    const-string v16, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    .line 104
    .line 105
    const-string v11, "com.google.android.gms.cast.metadata.TITLE"

    .line 106
    .line 107
    const-string v12, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    .line 108
    .line 109
    const-string v13, "com.google.android.gms.cast.metadata.ARTIST"

    .line 110
    .line 111
    const-string v14, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 112
    .line 113
    const-string v17, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    .line 114
    .line 115
    const-string v18, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 116
    .line 117
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    const-string v4, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    .line 126
    .line 127
    const-string v5, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    .line 128
    .line 129
    const-string v11, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    .line 130
    .line 131
    const-string v13, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    .line 132
    .line 133
    filled-new-array {v12, v4, v5, v11, v13}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    const-string v4, "com.google.android.gms.cast.metadata.STUDIO"

    .line 142
    .line 143
    filled-new-array {v12, v4, v11, v5}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_6
    const-string v4, "com.google.android.gms.cast.metadata.ARTIST"

    .line 152
    .line 153
    filled-new-array {v12, v4, v11, v5}, [Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :goto_0
    const-string v4, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    .line 161
    .line 162
    const-string v5, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    .line 163
    .line 164
    const-string v11, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    .line 165
    .line 166
    const-string v12, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    .line 167
    .line 168
    const-string v13, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    .line 169
    .line 170
    filled-new-array {v11, v4, v5, v12, v13}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    new-instance v4, Ljava/util/HashSet;

    .line 178
    .line 179
    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 180
    .line 181
    .line 182
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    :catch_1
    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_10

    .line 191
    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    check-cast v5, Ljava/lang/String;

    .line 197
    .line 198
    if-eqz v5, :cond_7

    .line 199
    .line 200
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v11

    .line 204
    if-nez v11, :cond_7

    .line 205
    .line 206
    sget-object v11, Lcom/google/android/gms/cast/MediaMetadata;->m:Lcom/google/android/gms/cast/zzcd;

    .line 207
    .line 208
    invoke-virtual {v11, v5}, Lcom/google/android/gms/cast/zzcd;->zzd(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 212
    iget-object v13, v0, Lcom/google/android/gms/cast/MediaMetadata;->e:Landroid/os/Bundle;

    .line 213
    .line 214
    if-eqz v12, :cond_d

    .line 215
    .line 216
    :try_start_2
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v14
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 220
    if-eqz v14, :cond_7

    .line 221
    .line 222
    :try_start_3
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v14

    .line 226
    if-eqz v14, :cond_7

    .line 227
    .line 228
    invoke-virtual {v11, v12}, Lcom/google/android/gms/cast/zzcd;->zza(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v11

    .line 232
    if-eq v11, v10, :cond_c

    .line 233
    .line 234
    if-eq v11, v9, :cond_b

    .line 235
    .line 236
    if-eq v11, v8, :cond_a

    .line 237
    .line 238
    if-eq v11, v7, :cond_9

    .line 239
    .line 240
    if-eq v11, v6, :cond_8

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_8
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 244
    .line 245
    .line 246
    move-result-wide v14

    .line 247
    invoke-static {v14, v15}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(J)J

    .line 248
    .line 249
    .line 250
    move-result-wide v14

    .line 251
    invoke-virtual {v13, v12, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_9
    instance-of v5, v14, Ljava/lang/String;

    .line 256
    .line 257
    if-eqz v5, :cond_7

    .line 258
    .line 259
    check-cast v14, Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v14}, Lcom/google/android/gms/cast/internal/media/zza;->zzb(Ljava/lang/String;)Ljava/util/Calendar;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    if-eqz v5, :cond_7

    .line 266
    .line 267
    invoke-virtual {v13, v12, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_a
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 272
    .line 273
    .line 274
    move-result-wide v14

    .line 275
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-nez v5, :cond_7

    .line 280
    .line 281
    invoke-virtual {v13, v12, v14, v15}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 282
    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_b
    instance-of v5, v14, Ljava/lang/Integer;

    .line 286
    .line 287
    if-eqz v5, :cond_7

    .line 288
    .line 289
    check-cast v14, Ljava/lang/Integer;

    .line 290
    .line 291
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    invoke-virtual {v13, v12, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 296
    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_c
    instance-of v5, v14, Ljava/lang/String;

    .line 300
    .line 301
    if-eqz v5, :cond_7

    .line 302
    .line 303
    check-cast v14, Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v13, v12, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 306
    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_d
    :try_start_4
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    instance-of v12, v11, Ljava/lang/String;

    .line 314
    .line 315
    if-eqz v12, :cond_e

    .line 316
    .line 317
    check-cast v11, Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v13, v5, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_1

    .line 323
    .line 324
    :cond_e
    instance-of v12, v11, Ljava/lang/Integer;

    .line 325
    .line 326
    if-eqz v12, :cond_f

    .line 327
    .line 328
    check-cast v11, Ljava/lang/Integer;

    .line 329
    .line 330
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 331
    .line 332
    .line 333
    move-result v11

    .line 334
    invoke-virtual {v13, v5, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_1

    .line 338
    .line 339
    :cond_f
    instance-of v12, v11, Ljava/lang/Double;

    .line 340
    .line 341
    if-eqz v12, :cond_7

    .line 342
    .line 343
    check-cast v11, Ljava/lang/Double;

    .line 344
    .line 345
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    .line 346
    .line 347
    .line 348
    move-result-wide v11

    .line 349
    invoke-virtual {v13, v5, v11, v12}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 350
    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :catch_2
    :cond_10
    return-void
.end method
