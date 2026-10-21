.class public final LQ2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/o;


# instance fields
.field public final a:Lcom/google/firebase/encoders/DataEncoder;

.field public final b:Landroid/net/ConnectivityManager;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/net/URL;

.field public final e:Lc3/a;

.field public final f:Lc3/a;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc3/a;Lc3/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LR2/v;->createDataEncoder()Lcom/google/firebase/encoders/DataEncoder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, LQ2/d;->a:Lcom/google/firebase/encoders/DataEncoder;

    .line 9
    .line 10
    iput-object p1, p0, LQ2/d;->c:Landroid/content/Context;

    .line 11
    .line 12
    const-string v0, "connectivity"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    iput-object p1, p0, LQ2/d;->b:Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    sget-object p1, LQ2/a;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1}, LQ2/d;->a(Ljava/lang/String;)Ljava/net/URL;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, LQ2/d;->d:Ljava/net/URL;

    .line 29
    .line 30
    iput-object p3, p0, LQ2/d;->e:Lc3/a;

    .line 31
    .line 32
    iput-object p2, p0, LQ2/d;->f:Lc3/a;

    .line 33
    .line 34
    const p1, 0x1fbd0

    .line 35
    .line 36
    .line 37
    iput p1, p0, LQ2/d;->g:I

    .line 38
    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-object v0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v2, "Invalid url: "

    .line 11
    .line 12
    invoke-static {v2, p0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method


# virtual methods
.method public decorate(LS2/u;)LS2/u;
    .locals 5

    .line 1
    iget-object v0, p0, LQ2/d;->b:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, LS2/u;->toBuilder()LS2/t;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "sdk-version"

    .line 12
    .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    invoke-virtual {p1, v1, v2}, LS2/t;->addMetadata(Ljava/lang/String;I)LS2/t;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v1, "model"

    .line 20
    .line 21
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v1, v2}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "hardware"

    .line 28
    .line 29
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v1, v2}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "device"

    .line 36
    .line 37
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v1, v2}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v1, "product"

    .line 44
    .line 45
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, v1, v2}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v1, "os-uild"

    .line 52
    .line 53
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v1, "manufacturer"

    .line 60
    .line 61
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, v1, v2}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v1, "fingerprint"

    .line 68
    .line 69
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v1, v2}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    div-int/lit16 v1, v1, 0x3e8

    .line 95
    .line 96
    int-to-long v1, v1

    .line 97
    const-string v3, "tz-offset"

    .line 98
    .line 99
    invoke-virtual {p1, v3, v1, v2}, LS2/t;->addMetadata(Ljava/lang/String;J)LS2/t;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-nez v0, :cond_0

    .line 104
    .line 105
    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->e:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->getValue()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    :goto_0
    const-string v2, "net-type"

    .line 117
    .line 118
    invoke-virtual {p1, v2, v1}, LS2/t;->addMetadata(Ljava/lang/String;I)LS2/t;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const/4 v1, 0x0

    .line 123
    const/4 v2, -0x1

    .line 124
    if-nez v0, :cond_1

    .line 125
    .line 126
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->e:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->getValue()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-ne v0, v2, :cond_2

    .line 138
    .line 139
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->f:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->getValue()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    goto :goto_1

    .line 146
    :cond_2
    invoke-static {v0}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-eqz v3, :cond_3

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    move v0, v1

    .line 154
    :goto_1
    const-string v3, "mobile-subtype"

    .line 155
    .line 156
    invoke-virtual {p1, v3, v0}, LS2/t;->addMetadata(Ljava/lang/String;I)LS2/t;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v3, "country"

    .line 169
    .line 170
    invoke-virtual {p1, v3, v0}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v3, "locale"

    .line 183
    .line 184
    invoke-virtual {p1, v3, v0}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    const-string v0, "phone"

    .line 189
    .line 190
    iget-object v3, p0, LQ2/d;->c:Landroid/content/Context;

    .line 191
    .line 192
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v4, "mcc_mnc"

    .line 203
    .line 204
    invoke-virtual {p1, v4, v0}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v1, "CctTransportBackend"

    .line 225
    .line 226
    const-string v3, "Unable to find version code for package"

    .line 227
    .line 228
    invoke-static {v1, v3, v0}, LW2/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const-string v1, "application_build"

    .line 236
    .line 237
    invoke-virtual {p1, v1, v0}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1}, LS2/t;->build()LS2/u;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    return-object p1
.end method

.method public send(LT2/h;)LT2/i;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, LT2/h;->getEvents()Ljava/lang/Iterable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, LS2/u;

    .line 25
    .line 26
    invoke-virtual {v2}, LS2/u;->getTransportName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    new-instance v4, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const-string v3, "CctTransportBackend"

    .line 76
    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/util/List;

    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, LS2/u;

    .line 97
    .line 98
    invoke-static {}, LR2/B;->builder()LR2/A;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    sget-object v6, Lcom/google/android/datatransport/cct/internal/QosTier;->b:Lcom/google/android/datatransport/cct/internal/QosTier;

    .line 103
    .line 104
    invoke-virtual {v5, v6}, LR2/A;->setQosTier(Lcom/google/android/datatransport/cct/internal/QosTier;)LR2/A;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    iget-object v6, p0, LQ2/d;->f:Lc3/a;

    .line 109
    .line 110
    invoke-interface {v6}, Lc3/a;->getTime()J

    .line 111
    .line 112
    .line 113
    move-result-wide v6

    .line 114
    invoke-virtual {v5, v6, v7}, LR2/A;->setRequestTimeMs(J)LR2/A;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    iget-object v6, p0, LQ2/d;->e:Lc3/a;

    .line 119
    .line 120
    invoke-interface {v6}, Lc3/a;->getTime()J

    .line 121
    .line 122
    .line 123
    move-result-wide v6

    .line 124
    invoke-virtual {v5, v6, v7}, LR2/A;->setRequestUptimeMs(J)LR2/A;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {}, LR2/x;->builder()LR2/w;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    sget-object v7, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->b:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 133
    .line 134
    invoke-virtual {v6, v7}, LR2/w;->setClientType(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;)LR2/w;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {}, LR2/b;->builder()LR2/a;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    const-string v8, "sdk-version"

    .line 143
    .line 144
    invoke-virtual {v4, v8}, LS2/u;->getInteger(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v7, v8}, LR2/a;->setSdkVersion(Ljava/lang/Integer;)LR2/a;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    const-string v8, "model"

    .line 157
    .line 158
    invoke-virtual {v4, v8}, LS2/u;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-virtual {v7, v8}, LR2/a;->setModel(Ljava/lang/String;)LR2/a;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    const-string v8, "hardware"

    .line 167
    .line 168
    invoke-virtual {v4, v8}, LS2/u;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v7, v8}, LR2/a;->setHardware(Ljava/lang/String;)LR2/a;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    const-string v8, "device"

    .line 177
    .line 178
    invoke-virtual {v4, v8}, LS2/u;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-virtual {v7, v8}, LR2/a;->setDevice(Ljava/lang/String;)LR2/a;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    const-string v8, "product"

    .line 187
    .line 188
    invoke-virtual {v4, v8}, LS2/u;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-virtual {v7, v8}, LR2/a;->setProduct(Ljava/lang/String;)LR2/a;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    const-string v8, "os-uild"

    .line 197
    .line 198
    invoke-virtual {v4, v8}, LS2/u;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v7, v8}, LR2/a;->setOsBuild(Ljava/lang/String;)LR2/a;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    const-string v8, "manufacturer"

    .line 207
    .line 208
    invoke-virtual {v4, v8}, LS2/u;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    invoke-virtual {v7, v8}, LR2/a;->setManufacturer(Ljava/lang/String;)LR2/a;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    const-string v8, "fingerprint"

    .line 217
    .line 218
    invoke-virtual {v4, v8}, LS2/u;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-virtual {v7, v8}, LR2/a;->setFingerprint(Ljava/lang/String;)LR2/a;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    const-string v8, "country"

    .line 227
    .line 228
    invoke-virtual {v4, v8}, LS2/u;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v7, v8}, LR2/a;->setCountry(Ljava/lang/String;)LR2/a;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    const-string v8, "locale"

    .line 237
    .line 238
    invoke-virtual {v4, v8}, LS2/u;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-virtual {v7, v8}, LR2/a;->setLocale(Ljava/lang/String;)LR2/a;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    const-string v8, "mcc_mnc"

    .line 247
    .line 248
    invoke-virtual {v4, v8}, LS2/u;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    invoke-virtual {v7, v8}, LR2/a;->setMccMnc(Ljava/lang/String;)LR2/a;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    const-string v8, "application_build"

    .line 257
    .line 258
    invoke-virtual {v4, v8}, LS2/u;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v7, v4}, LR2/a;->setApplicationBuild(Ljava/lang/String;)LR2/a;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v4}, LR2/a;->build()LR2/b;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {v6, v4}, LR2/w;->setAndroidClientInfo(LR2/b;)LR2/w;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v4}, LR2/w;->build()LR2/x;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v5, v4}, LR2/A;->setClientInfo(LR2/x;)LR2/A;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    check-cast v5, Ljava/lang/String;

    .line 287
    .line 288
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    invoke-virtual {v4, v5}, LR2/A;->setSource(I)LR2/A;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :catch_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    check-cast v5, Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v4, v5}, LR2/A;->setSource(Ljava/lang/String;)LR2/A;

    .line 303
    .line 304
    .line 305
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    .line 306
    .line 307
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    check-cast v2, Ljava/util/List;

    .line 315
    .line 316
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    if-eqz v6, :cond_5

    .line 325
    .line 326
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    check-cast v6, LS2/u;

    .line 331
    .line 332
    invoke-virtual {v6}, LS2/u;->getEncodedPayload()LS2/s;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    invoke-virtual {v7}, LS2/s;->getEncoding()LP2/b;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    const-string v9, "proto"

    .line 341
    .line 342
    invoke-static {v9}, LP2/b;->of(Ljava/lang/String;)LP2/b;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    invoke-virtual {v8, v9}, LP2/b;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    if-eqz v9, :cond_2

    .line 351
    .line 352
    invoke-virtual {v7}, LS2/s;->getBytes()[B

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    invoke-static {v7}, LR2/z;->protoBuilder([B)LR2/y;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    goto :goto_4

    .line 361
    :cond_2
    const-string v9, "json"

    .line 362
    .line 363
    invoke-static {v9}, LP2/b;->of(Ljava/lang/String;)LP2/b;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    invoke-virtual {v8, v9}, LP2/b;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    if-eqz v9, :cond_4

    .line 372
    .line 373
    new-instance v8, Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v7}, LS2/s;->getBytes()[B

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    const-string v9, "UTF-8"

    .line 380
    .line 381
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 386
    .line 387
    .line 388
    invoke-static {v8}, LR2/z;->jsonBuilder(Ljava/lang/String;)LR2/y;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    :goto_4
    invoke-virtual {v6}, LS2/u;->getEventMillis()J

    .line 393
    .line 394
    .line 395
    move-result-wide v8

    .line 396
    invoke-virtual {v7, v8, v9}, LR2/y;->setEventTimeMs(J)LR2/y;

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    invoke-virtual {v6}, LS2/u;->getUptimeMillis()J

    .line 401
    .line 402
    .line 403
    move-result-wide v9

    .line 404
    invoke-virtual {v8, v9, v10}, LR2/y;->setEventUptimeMs(J)LR2/y;

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    const-string v9, "tz-offset"

    .line 409
    .line 410
    invoke-virtual {v6, v9}, LS2/u;->getLong(Ljava/lang/String;)J

    .line 411
    .line 412
    .line 413
    move-result-wide v9

    .line 414
    invoke-virtual {v8, v9, v10}, LR2/y;->setTimezoneOffsetSeconds(J)LR2/y;

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    invoke-static {}, LR2/E;->builder()LR2/D;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    const-string v10, "net-type"

    .line 423
    .line 424
    invoke-virtual {v6, v10}, LS2/u;->getInteger(Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    move-result v10

    .line 428
    invoke-static {v10}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    invoke-virtual {v9, v10}, LR2/D;->setNetworkType(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;)LR2/D;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    const-string v10, "mobile-subtype"

    .line 437
    .line 438
    invoke-virtual {v6, v10}, LS2/u;->getInteger(Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    move-result v10

    .line 442
    invoke-static {v10}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 443
    .line 444
    .line 445
    move-result-object v10

    .line 446
    invoke-virtual {v9, v10}, LR2/D;->setMobileSubtype(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;)LR2/D;

    .line 447
    .line 448
    .line 449
    move-result-object v9

    .line 450
    invoke-virtual {v9}, LR2/D;->build()LR2/E;

    .line 451
    .line 452
    .line 453
    move-result-object v9

    .line 454
    invoke-virtual {v8, v9}, LR2/y;->setNetworkConnectionInfo(LR2/E;)LR2/y;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v6}, LS2/u;->getCode()Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v8

    .line 461
    if-eqz v8, :cond_3

    .line 462
    .line 463
    invoke-virtual {v6}, LS2/u;->getCode()Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-virtual {v7, v6}, LR2/y;->setEventCode(Ljava/lang/Integer;)LR2/y;

    .line 468
    .line 469
    .line 470
    :cond_3
    invoke-virtual {v7}, LR2/y;->build()LR2/z;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    goto/16 :goto_3

    .line 478
    .line 479
    :cond_4
    const-string v6, "Received event of unsupported encoding %s. Skipping..."

    .line 480
    .line 481
    invoke-static {v3, v6, v8}, LW2/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_3

    .line 485
    .line 486
    :cond_5
    invoke-virtual {v4, v5}, LR2/A;->setLogEvents(Ljava/util/List;)LR2/A;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v4}, LR2/A;->build()LR2/B;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    goto/16 :goto_1

    .line 497
    .line 498
    :cond_6
    invoke-static {v1}, LR2/v;->create(Ljava/util/List;)LR2/v;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {p1}, LT2/h;->getExtras()[B

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    const/4 v2, 0x0

    .line 507
    iget-object v4, p0, LQ2/d;->d:Ljava/net/URL;

    .line 508
    .line 509
    if-eqz v1, :cond_8

    .line 510
    .line 511
    :try_start_1
    invoke-virtual {p1}, LT2/h;->getExtras()[B

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    invoke-static {p1}, LQ2/a;->fromByteArray([B)LQ2/a;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    invoke-virtual {p1}, LQ2/a;->getAPIKey()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    if-eqz v1, :cond_7

    .line 524
    .line 525
    invoke-virtual {p1}, LQ2/a;->getAPIKey()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    :cond_7
    invoke-virtual {p1}, LQ2/a;->getEndPoint()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    if-eqz v1, :cond_8

    .line 534
    .line 535
    invoke-virtual {p1}, LQ2/a;->getEndPoint()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    invoke-static {p1}, LQ2/d;->a(Ljava/lang/String;)Ljava/net/URL;

    .line 540
    .line 541
    .line 542
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 543
    goto :goto_5

    .line 544
    :catch_1
    invoke-static {}, LT2/i;->fatalError()LT2/i;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    return-object p1

    .line 549
    :cond_8
    :goto_5
    :try_start_2
    new-instance p1, LQ2/b;

    .line 550
    .line 551
    invoke-direct {p1, v4, v0, v2}, LQ2/b;-><init>(Ljava/net/URL;LR2/v;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    new-instance v0, LA0/a;

    .line 555
    .line 556
    const/16 v1, 0x8

    .line 557
    .line 558
    invoke-direct {v0, p0, v1}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 559
    .line 560
    .line 561
    new-instance v1, LJ0/g;

    .line 562
    .line 563
    const/4 v2, 0x5

    .line 564
    invoke-direct {v1, v2}, LJ0/g;-><init>(I)V

    .line 565
    .line 566
    .line 567
    const/4 v2, 0x5

    .line 568
    invoke-static {v2, p1, v0, v1}, LX2/b;->retry(ILjava/lang/Object;LX2/a;LX2/c;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    check-cast p1, LQ2/c;

    .line 573
    .line 574
    iget v0, p1, LQ2/c;->a:I

    .line 575
    .line 576
    const/16 v1, 0xc8

    .line 577
    .line 578
    if-ne v0, v1, :cond_9

    .line 579
    .line 580
    iget-wide v0, p1, LQ2/c;->c:J

    .line 581
    .line 582
    invoke-static {v0, v1}, LT2/i;->ok(J)LT2/i;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    return-object p1

    .line 587
    :catch_2
    move-exception p1

    .line 588
    goto :goto_7

    .line 589
    :cond_9
    const/16 p1, 0x1f4

    .line 590
    .line 591
    if-ge v0, p1, :cond_c

    .line 592
    .line 593
    const/16 p1, 0x194

    .line 594
    .line 595
    if-ne v0, p1, :cond_a

    .line 596
    .line 597
    goto :goto_6

    .line 598
    :cond_a
    const/16 p1, 0x190

    .line 599
    .line 600
    if-ne v0, p1, :cond_b

    .line 601
    .line 602
    invoke-static {}, LT2/i;->invalidPayload()LT2/i;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    return-object p1

    .line 607
    :cond_b
    invoke-static {}, LT2/i;->fatalError()LT2/i;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    return-object p1

    .line 612
    :cond_c
    :goto_6
    invoke-static {}, LT2/i;->transientError()LT2/i;

    .line 613
    .line 614
    .line 615
    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 616
    return-object p1

    .line 617
    :goto_7
    const-string v0, "Could not make request to the backend"

    .line 618
    .line 619
    invoke-static {v3, v0, p1}, LW2/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    .line 621
    .line 622
    invoke-static {}, LT2/i;->transientError()LT2/i;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    return-object p1
.end method
