.class final Lcom/google/android/gms/measurement/internal/zzhp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zziw;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzho;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzho;Lcom/google/android/gms/measurement/internal/zziw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhp;->b:Lcom/google/android/gms/measurement/internal/zziw;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhp;->e:Lcom/google/android/gms/measurement/internal/zzho;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhp;->e:Lcom/google/android/gms/measurement/internal/zzho;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhh;->zzt()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaz;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzil;-><init>(Lcom/google/android/gms/measurement/internal/zzho;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzad()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzho;->v:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 19
    .line 20
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfv;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhp;->b:Lcom/google/android/gms/measurement/internal/zziw;

    .line 23
    .line 24
    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zziw;->f:J

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzho;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    iput-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzfv;->o:J

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    iput-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfv;->p:Ljava/lang/String;

    .line 35
    .line 36
    iput-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzfv;->h:J

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzho;->w:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 42
    .line 43
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfu;

    .line 44
    .line 45
    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zzfu;-><init>(Lcom/google/android/gms/measurement/internal/zzho;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 49
    .line 50
    .line 51
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzho;->t:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 52
    .line 53
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzla;

    .line 54
    .line 55
    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zzla;-><init>(Lcom/google/android/gms/measurement/internal/zzho;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 59
    .line 60
    .line 61
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzho;->u:Lcom/google/android/gms/measurement/internal/zzla;

    .line 62
    .line 63
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzho;->l:Lcom/google/android/gms/measurement/internal/zznt;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzae()V

    .line 66
    .line 67
    .line 68
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzho;->h:Lcom/google/android/gms/measurement/internal/zzgm;

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzae()V

    .line 71
    .line 72
    .line 73
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzho;->w:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-wide/32 v4, 0x153d8

    .line 87
    .line 88
    .line 89
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const-string v5, "App measurement initialized, version"

    .line 94
    .line 95
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    const-string v4, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->a()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzho;->b:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_1

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzt()Lcom/google/android/gms/measurement/internal/zznt;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzho;->g:Lcom/google/android/gms/measurement/internal/zzae;

    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzp()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zznt;->J(Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_0

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v3, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v5, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    .line 164
    .line 165
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const-string v3, "Debug-level message logging enabled"

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget v1, v0, Lcom/google/android/gms/measurement/internal/zzho;->E:I

    .line 192
    .line 193
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzho;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eq v1, v4, :cond_2

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iget v4, v0, Lcom/google/android/gms/measurement/internal/zzho;->E:I

    .line 210
    .line 211
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    const-string v5, "Not all components initialized"

    .line 224
    .line 225
    invoke-virtual {v1, v5, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_2
    const/4 v1, 0x1

    .line 229
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzho;->x:Z

    .line 230
    .line 231
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zziw;->g:Lcom/google/android/gms/internal/measurement/zzdq;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzho;->zza(Lcom/google/android/gms/internal/measurement/zzdq;)V

    .line 234
    .line 235
    .line 236
    return-void
.end method
