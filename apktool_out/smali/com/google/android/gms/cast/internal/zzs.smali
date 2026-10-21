.class final Lcom/google/android/gms/cast/internal/zzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/internal/zzw;

.field public final synthetic e:Lcom/google/android/gms/cast/internal/zzab;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/cast/internal/zzab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzs;->b:Lcom/google/android/gms/cast/internal/zzw;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzs;->e:Lcom/google/android/gms/cast/internal/zzab;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    sget-object v3, Lcom/google/android/gms/cast/internal/zzw;->x:Lcom/google/android/gms/cast/internal/Logger;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzs;->e:Lcom/google/android/gms/cast/internal/zzab;

    .line 7
    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/cast/internal/zzab;->zze()Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    iget-object v5, p0, Lcom/google/android/gms/cast/internal/zzs;->b:Lcom/google/android/gms/cast/internal/zzw;

    .line 13
    .line 14
    iget-object v6, v5, Lcom/google/android/gms/cast/internal/zzw;->a:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 15
    .line 16
    invoke-static {v4, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    iget-object v7, v5, Lcom/google/android/gms/cast/internal/zzw;->c:Lcom/google/android/gms/cast/Cast$Listener;

    .line 21
    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    iput-object v4, v5, Lcom/google/android/gms/cast/internal/zzw;->a:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 25
    .line 26
    invoke-virtual {v7, v4}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/cast/internal/zzab;->zzb()D

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    iget-wide v10, v5, Lcom/google/android/gms/cast/internal/zzw;->m:D

    .line 40
    .line 41
    sub-double v10, v8, v10

    .line 42
    .line 43
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide v10

    .line 47
    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    cmpl-double v4, v10, v12

    .line 53
    .line 54
    if-lez v4, :cond_1

    .line 55
    .line 56
    iput-wide v8, v5, Lcom/google/android/gms/cast/internal/zzw;->m:D

    .line 57
    .line 58
    move v4, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v4, v1

    .line 61
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/cast/internal/zzab;->zzg()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    iget-boolean v8, v5, Lcom/google/android/gms/cast/internal/zzw;->i:Z

    .line 66
    .line 67
    if-eq v6, v8, :cond_2

    .line 68
    .line 69
    iput-boolean v6, v5, Lcom/google/android/gms/cast/internal/zzw;->i:Z

    .line 70
    .line 71
    move v4, v2

    .line 72
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/cast/internal/zzab;->zza()D

    .line 73
    .line 74
    .line 75
    move-result-wide v8

    .line 76
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 77
    .line 78
    .line 79
    sget-object v6, Lcom/google/android/gms/cast/internal/zzw;->x:Lcom/google/android/gms/cast/internal/Logger;

    .line 80
    .line 81
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    iget-boolean v9, v5, Lcom/google/android/gms/cast/internal/zzw;->k:Z

    .line 86
    .line 87
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    new-array v10, v0, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object v8, v10, v1

    .line 94
    .line 95
    aput-object v9, v10, v2

    .line 96
    .line 97
    const-string v8, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 98
    .line 99
    invoke-virtual {v6, v8, v10}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    if-eqz v7, :cond_4

    .line 103
    .line 104
    if-nez v4, :cond_3

    .line 105
    .line 106
    iget-boolean v4, v5, Lcom/google/android/gms/cast/internal/zzw;->k:Z

    .line 107
    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/cast/internal/zzab;->zzc()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    iget v8, v5, Lcom/google/android/gms/cast/internal/zzw;->o:I

    .line 118
    .line 119
    if-eq v4, v8, :cond_5

    .line 120
    .line 121
    iput v4, v5, Lcom/google/android/gms/cast/internal/zzw;->o:I

    .line 122
    .line 123
    move v4, v2

    .line 124
    goto :goto_1

    .line 125
    :cond_5
    move v4, v1

    .line 126
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    iget-boolean v9, v5, Lcom/google/android/gms/cast/internal/zzw;->k:Z

    .line 131
    .line 132
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    new-array v10, v0, [Ljava/lang/Object;

    .line 137
    .line 138
    aput-object v8, v10, v1

    .line 139
    .line 140
    aput-object v9, v10, v2

    .line 141
    .line 142
    const-string v8, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 143
    .line 144
    invoke-virtual {v6, v8, v10}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    if-eqz v7, :cond_7

    .line 148
    .line 149
    if-nez v4, :cond_6

    .line 150
    .line 151
    iget-boolean v4, v5, Lcom/google/android/gms/cast/internal/zzw;->k:Z

    .line 152
    .line 153
    if-eqz v4, :cond_7

    .line 154
    .line 155
    :cond_6
    iget v4, v5, Lcom/google/android/gms/cast/internal/zzw;->o:I

    .line 156
    .line 157
    invoke-virtual {v7, v4}, Lcom/google/android/gms/cast/Cast$Listener;->onActiveInputStateChanged(I)V

    .line 158
    .line 159
    .line 160
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/cast/internal/zzab;->zzd()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    iget v8, v5, Lcom/google/android/gms/cast/internal/zzw;->p:I

    .line 165
    .line 166
    if-eq v4, v8, :cond_8

    .line 167
    .line 168
    iput v4, v5, Lcom/google/android/gms/cast/internal/zzw;->p:I

    .line 169
    .line 170
    move v4, v2

    .line 171
    goto :goto_2

    .line 172
    :cond_8
    move v4, v1

    .line 173
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    iget-boolean v9, v5, Lcom/google/android/gms/cast/internal/zzw;->k:Z

    .line 178
    .line 179
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    new-array v0, v0, [Ljava/lang/Object;

    .line 184
    .line 185
    aput-object v8, v0, v1

    .line 186
    .line 187
    aput-object v9, v0, v2

    .line 188
    .line 189
    const-string v2, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 190
    .line 191
    invoke-virtual {v6, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    if-eqz v7, :cond_a

    .line 195
    .line 196
    if-nez v4, :cond_9

    .line 197
    .line 198
    iget-boolean v0, v5, Lcom/google/android/gms/cast/internal/zzw;->k:Z

    .line 199
    .line 200
    if-eqz v0, :cond_a

    .line 201
    .line 202
    :cond_9
    iget v0, v5, Lcom/google/android/gms/cast/internal/zzw;->p:I

    .line 203
    .line 204
    invoke-virtual {v7, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onStandbyStateChanged(I)V

    .line 205
    .line 206
    .line 207
    :cond_a
    iget-object v0, v5, Lcom/google/android/gms/cast/internal/zzw;->n:Lcom/google/android/gms/cast/zzav;

    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/google/android/gms/cast/internal/zzab;->zzf()Lcom/google/android/gms/cast/zzav;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-static {v0, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_b

    .line 218
    .line 219
    invoke-virtual {v3}, Lcom/google/android/gms/cast/internal/zzab;->zzf()Lcom/google/android/gms/cast/zzav;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iput-object v0, v5, Lcom/google/android/gms/cast/internal/zzw;->n:Lcom/google/android/gms/cast/zzav;

    .line 224
    .line 225
    :cond_b
    iput-boolean v1, v5, Lcom/google/android/gms/cast/internal/zzw;->k:Z

    .line 226
    .line 227
    return-void
.end method
