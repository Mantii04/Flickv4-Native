.class final Lcom/google/android/gms/cast/framework/media/zzbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/framework/media/zzbu;

.field public final synthetic e:Lcom/google/android/gms/cast/framework/media/zzbu;

.field public final synthetic f:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzbu;Lcom/google/android/gms/cast/framework/media/zzbu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbr;->f:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzbr;->b:Lcom/google/android/gms/cast/framework/media/zzbu;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzbr;->e:Lcom/google/android/gms/cast/framework/media/zzbu;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbr;->f:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    .line 2
    .line 3
    iget-boolean p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->v0:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->z0:Landroid/app/AlertDialog;

    .line 9
    .line 10
    if-eqz p2, :cond_9

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->z0:Landroid/app/AlertDialog;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->A0:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->z0:Landroid/app/AlertDialog;

    .line 33
    .line 34
    if-eqz p2, :cond_9

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->z0:Landroid/app/AlertDialog;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzbr;->b:Lcom/google/android/gms/cast/framework/media/zzbu;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/zzbu;->zza()Lcom/google/android/gms/cast/MediaTrack;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    const-wide/16 v5, -0x1

    .line 60
    .line 61
    cmp-long v3, v3, v5

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzbr;->e:Lcom/google/android/gms/cast/framework/media/zzbu;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/zzbu;->zza()Lcom/google/android/gms/cast/MediaTrack;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->y0:[J

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    if-eqz v2, :cond_7

    .line 99
    .line 100
    array-length v4, v2

    .line 101
    if-lez v4, :cond_7

    .line 102
    .line 103
    new-instance v4, Ljava/util/HashSet;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v5, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->x0:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_4

    .line 119
    .line 120
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Lcom/google/android/gms/cast/MediaTrack;

    .line 125
    .line 126
    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    .line 127
    .line 128
    .line 129
    move-result-wide v6

    .line 130
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    iget-object v5, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->w0:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_5

    .line 149
    .line 150
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    check-cast v6, Lcom/google/android/gms/cast/MediaTrack;

    .line 155
    .line 156
    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    .line 157
    .line 158
    .line 159
    move-result-wide v6

    .line 160
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_5
    array-length v5, v2

    .line 169
    move v6, v3

    .line 170
    :goto_2
    if-ge v6, v5, :cond_7

    .line 171
    .line 172
    aget-wide v7, v2, v6

    .line 173
    .line 174
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-nez v8, :cond_6

    .line 183
    .line 184
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    new-array v2, v2, [J

    .line 195
    .line 196
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-ge v3, v4, :cond_8

    .line 201
    .line 202
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Ljava/lang/Long;

    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 209
    .line 210
    .line 211
    move-result-wide v4

    .line 212
    aput-wide v4, v2, v3

    .line 213
    .line 214
    add-int/lit8 v3, v3, 0x1

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_8
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->setActiveMediaTracks([J)Lcom/google/android/gms/common/api/PendingResult;

    .line 221
    .line 222
    .line 223
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->z0:Landroid/app/AlertDialog;

    .line 224
    .line 225
    if-eqz p2, :cond_9

    .line 226
    .line 227
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 228
    .line 229
    .line 230
    iput-object v0, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->z0:Landroid/app/AlertDialog;

    .line 231
    .line 232
    :cond_9
    return-void
.end method
