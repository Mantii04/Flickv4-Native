.class public final synthetic Lcom/google/android/gms/cast/zzbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/zzbs;

.field public final synthetic e:Lcom/google/android/gms/cast/internal/zzab;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbs;Lcom/google/android/gms/cast/internal/zzab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbl;->b:Lcom/google/android/gms/cast/zzbs;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzbl;->e:Lcom/google/android/gms/cast/internal/zzab;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/cast/zzbl;->b:Lcom/google/android/gms/cast/zzbs;

    .line 5
    .line 6
    iget-object v3, v3, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 7
    .line 8
    sget-object v4, Lcom/google/android/gms/cast/zzbt;->F:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/google/android/gms/cast/zzbl;->e:Lcom/google/android/gms/cast/internal/zzab;

    .line 11
    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzab;->zze()Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    iget-object v6, v3, Lcom/google/android/gms/cast/zzbt;->s:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 17
    .line 18
    invoke-static {v5, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    iget-object v7, v3, Lcom/google/android/gms/cast/zzbt;->C:Lcom/google/android/gms/cast/Cast$Listener;

    .line 23
    .line 24
    if-nez v6, :cond_0

    .line 25
    .line 26
    iput-object v5, v3, Lcom/google/android/gms/cast/zzbt;->s:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 27
    .line 28
    invoke-virtual {v7, v5}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzab;->zzb()D

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-nez v8, :cond_1

    .line 40
    .line 41
    iget-wide v8, v3, Lcom/google/android/gms/cast/zzbt;->u:D

    .line 42
    .line 43
    sub-double v8, v5, v8

    .line 44
    .line 45
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    cmpl-double v8, v8, v10

    .line 55
    .line 56
    if-lez v8, :cond_1

    .line 57
    .line 58
    iput-wide v5, v3, Lcom/google/android/gms/cast/zzbt;->u:D

    .line 59
    .line 60
    move v5, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v5, v1

    .line 63
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzab;->zzg()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iget-boolean v8, v3, Lcom/google/android/gms/cast/zzbt;->v:Z

    .line 68
    .line 69
    if-eq v6, v8, :cond_2

    .line 70
    .line 71
    iput-boolean v6, v3, Lcom/google/android/gms/cast/zzbt;->v:Z

    .line 72
    .line 73
    move v5, v2

    .line 74
    :cond_2
    sget-object v6, Lcom/google/android/gms/cast/zzbt;->F:Lcom/google/android/gms/cast/internal/Logger;

    .line 75
    .line 76
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    iget-boolean v9, v3, Lcom/google/android/gms/cast/zzbt;->l:Z

    .line 81
    .line 82
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    new-array v10, v0, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v8, v10, v1

    .line 89
    .line 90
    aput-object v9, v10, v2

    .line 91
    .line 92
    const-string v8, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 93
    .line 94
    invoke-virtual {v6, v8, v10}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    if-eqz v7, :cond_4

    .line 98
    .line 99
    if-nez v5, :cond_3

    .line 100
    .line 101
    iget-boolean v5, v3, Lcom/google/android/gms/cast/zzbt;->l:Z

    .line 102
    .line 103
    if-eqz v5, :cond_4

    .line 104
    .line 105
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzab;->zza()D

    .line 109
    .line 110
    .line 111
    move-result-wide v8

    .line 112
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzab;->zzc()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    iget v8, v3, Lcom/google/android/gms/cast/zzbt;->w:I

    .line 120
    .line 121
    if-eq v5, v8, :cond_5

    .line 122
    .line 123
    iput v5, v3, Lcom/google/android/gms/cast/zzbt;->w:I

    .line 124
    .line 125
    move v5, v2

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    move v5, v1

    .line 128
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    iget-boolean v9, v3, Lcom/google/android/gms/cast/zzbt;->l:Z

    .line 133
    .line 134
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    new-array v10, v0, [Ljava/lang/Object;

    .line 139
    .line 140
    aput-object v8, v10, v1

    .line 141
    .line 142
    aput-object v9, v10, v2

    .line 143
    .line 144
    const-string v8, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 145
    .line 146
    invoke-virtual {v6, v8, v10}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    if-eqz v7, :cond_7

    .line 150
    .line 151
    if-nez v5, :cond_6

    .line 152
    .line 153
    iget-boolean v5, v3, Lcom/google/android/gms/cast/zzbt;->l:Z

    .line 154
    .line 155
    if-eqz v5, :cond_7

    .line 156
    .line 157
    :cond_6
    iget v5, v3, Lcom/google/android/gms/cast/zzbt;->w:I

    .line 158
    .line 159
    invoke-virtual {v7, v5}, Lcom/google/android/gms/cast/Cast$Listener;->onActiveInputStateChanged(I)V

    .line 160
    .line 161
    .line 162
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzab;->zzd()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    iget v8, v3, Lcom/google/android/gms/cast/zzbt;->x:I

    .line 167
    .line 168
    if-eq v5, v8, :cond_8

    .line 169
    .line 170
    iput v5, v3, Lcom/google/android/gms/cast/zzbt;->x:I

    .line 171
    .line 172
    move v5, v2

    .line 173
    goto :goto_2

    .line 174
    :cond_8
    move v5, v1

    .line 175
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    iget-boolean v9, v3, Lcom/google/android/gms/cast/zzbt;->l:Z

    .line 180
    .line 181
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    new-array v0, v0, [Ljava/lang/Object;

    .line 186
    .line 187
    aput-object v8, v0, v1

    .line 188
    .line 189
    aput-object v9, v0, v2

    .line 190
    .line 191
    const-string v2, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 192
    .line 193
    invoke-virtual {v6, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    if-eqz v7, :cond_a

    .line 197
    .line 198
    if-nez v5, :cond_9

    .line 199
    .line 200
    iget-boolean v0, v3, Lcom/google/android/gms/cast/zzbt;->l:Z

    .line 201
    .line 202
    if-eqz v0, :cond_a

    .line 203
    .line 204
    :cond_9
    iget v0, v3, Lcom/google/android/gms/cast/zzbt;->x:I

    .line 205
    .line 206
    invoke-virtual {v7, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onStandbyStateChanged(I)V

    .line 207
    .line 208
    .line 209
    :cond_a
    iget-object v0, v3, Lcom/google/android/gms/cast/zzbt;->y:Lcom/google/android/gms/cast/zzav;

    .line 210
    .line 211
    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzab;->zzf()Lcom/google/android/gms/cast/zzav;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-static {v0, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_b

    .line 220
    .line 221
    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzab;->zzf()Lcom/google/android/gms/cast/zzav;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, v3, Lcom/google/android/gms/cast/zzbt;->y:Lcom/google/android/gms/cast/zzav;

    .line 226
    .line 227
    :cond_b
    iput-boolean v1, v3, Lcom/google/android/gms/cast/zzbt;->l:Z

    .line 228
    .line 229
    return-void
.end method
