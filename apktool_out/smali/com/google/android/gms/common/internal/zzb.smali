.class final Lcom/google/android/gms/common/internal/zzb;
.super Lcom/google/android/gms/internal/common/zzi;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzb;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzb;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    const/4 v3, 0x7

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x2

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    iget v0, p1, Landroid/os/Message;->what:I

    .line 17
    .line 18
    if-eq v0, v5, :cond_1

    .line 19
    .line 20
    if-eq v0, v4, :cond_1

    .line 21
    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lcom/google/android/gms/common/internal/zzc;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzc;->zzc()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzc;->zzg()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    const/4 v6, 0x5

    .line 41
    if-eq v1, v4, :cond_4

    .line 42
    .line 43
    if-eq v1, v3, :cond_4

    .line 44
    .line 45
    if-ne v1, v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->enableLocalFallback()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 54
    .line 55
    if-ne v1, v6, :cond_5

    .line 56
    .line 57
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_14

    .line 62
    .line 63
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    .line 64
    .line 65
    const/16 v7, 0x8

    .line 66
    .line 67
    const/4 v8, 0x3

    .line 68
    const/4 v9, 0x0

    .line 69
    if-ne v1, v2, :cond_9

    .line 70
    .line 71
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 72
    .line 73
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 74
    .line 75
    invoke-direct {v1, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    invoke-static {v0, v8, v9}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_7
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_8

    .line 103
    .line 104
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_2

    .line 109
    :cond_8
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 110
    .line 111
    invoke-direct {p1, v7}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 112
    .line 113
    .line 114
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 115
    .line 116
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_9
    if-ne v1, v6, :cond_b

    .line 124
    .line 125
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_a

    .line 130
    .line 131
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    goto :goto_3

    .line 136
    :cond_a
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 137
    .line 138
    invoke-direct {p1, v7}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 139
    .line 140
    .line 141
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 142
    .line 143
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_b
    if-ne v1, v8, :cond_d

    .line 151
    .line 152
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    .line 154
    instance-of v2, v1, Landroid/app/PendingIntent;

    .line 155
    .line 156
    if-eqz v2, :cond_c

    .line 157
    .line 158
    move-object v9, v1

    .line 159
    check-cast v9, Landroid/app/PendingIntent;

    .line 160
    .line 161
    :cond_c
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 162
    .line 163
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 164
    .line 165
    invoke-direct {v1, p1, v9}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 169
    .line 170
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_d
    const/4 v2, 0x6

    .line 178
    if-ne v1, v2, :cond_f

    .line 179
    .line 180
    invoke-static {v0, v6, v9}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-eqz v1, :cond_e

    .line 188
    .line 189
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 194
    .line 195
    invoke-interface {v1, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;->onConnectionSuspended(I)V

    .line 196
    .line 197
    .line 198
    :cond_e
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 199
    .line 200
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionSuspended(I)V

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v6, v4, v9}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_f
    if-ne v1, v5, :cond_11

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_10

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p1, Lcom/google/android/gms/common/internal/zzc;

    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzc;->zzc()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzc;->zzg()V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_11
    :goto_4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 228
    .line 229
    if-eq v0, v5, :cond_13

    .line 230
    .line 231
    if-eq v0, v4, :cond_13

    .line 232
    .line 233
    if-ne v0, v3, :cond_12

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_12
    const-string p1, "Don\'t know how to handle message: "

    .line 237
    .line 238
    invoke-static {v0, p1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    new-instance v0, Ljava/lang/Exception;

    .line 243
    .line 244
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v1, "GmsClient"

    .line 248
    .line 249
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_13
    :goto_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast p1, Lcom/google/android/gms/common/internal/zzc;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzc;->zze()V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast p1, Lcom/google/android/gms/common/internal/zzc;

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzc;->zzc()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzc;->zzg()V

    .line 269
    .line 270
    .line 271
    return-void
.end method
