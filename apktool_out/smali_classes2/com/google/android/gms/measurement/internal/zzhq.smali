.class public final synthetic Lcom/google/android/gms/measurement/internal/zzhq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzkp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzho;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzho;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhq;->a:Lcom/google/android/gms/measurement/internal/zzho;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhq;->a:Lcom/google/android/gms/measurement/internal/zzho;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p5, "gbraid"

    .line 7
    .line 8
    const-string v0, "gclid"

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    const/16 v2, 0xc8

    .line 13
    .line 14
    if-eq p2, v2, :cond_0

    .line 15
    .line 16
    const/16 v2, 0xcc

    .line 17
    .line 18
    if-eq p2, v2, :cond_0

    .line 19
    .line 20
    const/16 v2, 0x130

    .line 21
    .line 22
    if-ne p2, v2, :cond_8

    .line 23
    .line 24
    :cond_0
    if-nez p3, :cond_8

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzho;->zzn()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzgm;->u:Lcom/google/android/gms/measurement/internal/zzgp;

    .line 31
    .line 32
    const/4 p3, 0x1

    .line 33
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(Z)V

    .line 34
    .line 35
    .line 36
    if-eqz p4, :cond_7

    .line 37
    .line 38
    array-length p2, p4

    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_1
    new-instance p2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p2, "deeplink"

    .line 54
    .line 55
    invoke-virtual {p3, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    invoke-virtual {p3, p5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "timestamp"

    .line 68
    .line 69
    const-wide/16 v3, 0x0

    .line 70
    .line 71
    invoke-virtual {p3, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    if-eqz p3, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const-string p3, "Deferred Deep Link is empty."

    .line 90
    .line 91
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catch_0
    move-exception p2

    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_2
    new-instance p3, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpf;->zza()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_4

    .line 108
    .line 109
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzho;->g:Lcom/google/android/gms/measurement/internal/zzae;

    .line 110
    .line 111
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->S0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_4

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzho;->zzt()Lcom/google/android/gms/measurement/internal/zznt;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4, p2}, Lcom/google/android/gms/measurement/internal/zznt;->zzi(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    const-string p5, "Deferred Deep Link validation failed. gclid, gbraid, deep link"

    .line 138
    .line 139
    invoke-virtual {p3, p5, p4, v1, p2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_3
    invoke-virtual {p3, p5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzho;->zzt()Lcom/google/android/gms/measurement/internal/zznt;

    .line 148
    .line 149
    .line 150
    move-result-object p5

    .line 151
    invoke-virtual {p5, p2}, Lcom/google/android/gms/measurement/internal/zznt;->zzi(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result p5

    .line 155
    if-nez p5, :cond_5

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    const-string p5, "Deferred Deep Link validation failed. gclid, deep link"

    .line 166
    .line 167
    invoke-virtual {p3, p5, p4, p2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_5
    :goto_0
    invoke-virtual {p3, v0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string p4, "_cis"

    .line 175
    .line 176
    const-string p5, "ddp"

    .line 177
    .line 178
    invoke-virtual {p3, p4, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object p4, p1, Lcom/google/android/gms/measurement/internal/zzho;->p:Lcom/google/android/gms/measurement/internal/zziy;

    .line 182
    .line 183
    const-string p5, "auto"

    .line 184
    .line 185
    const-string v0, "_cmp"

    .line 186
    .line 187
    invoke-virtual {p4, p5, v0, p3}, Lcom/google/android/gms/measurement/internal/zziy;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzho;->zzt()Lcom/google/android/gms/measurement/internal/zznt;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result p4

    .line 198
    if-nez p4, :cond_6

    .line 199
    .line 200
    invoke-virtual {p3, p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zznt;->t(Ljava/lang/String;D)Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-eqz p2, :cond_6

    .line 205
    .line 206
    new-instance p2, Landroid/content/Intent;

    .line 207
    .line 208
    const-string p4, "android.google.analytics.action.DEEPLINK_ACTION"

    .line 209
    .line 210
    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    invoke-virtual {p3, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    .line 230
    .line 231
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_6
    return-void

    .line 235
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    const-string p2, "Deferred Deep Link response empty."

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    .line 262
    .line 263
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    return-void
.end method
