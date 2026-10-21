.class public final Lcom/google/android/gms/internal/cast/zzg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field public static final zza:Z
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field zzb:LP2/e;

.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/cast/internal/zzn;

.field private final zzf:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final zzg:Lcom/google/android/gms/internal/cast/zzbn;

.field private final zzh:Lcom/google/android/gms/internal/cast/zzaf;

.field private final zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/Long;

.field private final zzk:Ljava/util/concurrent/ExecutorService;

.field private zzl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "ClientCastAnalytics"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/cast/zzg;->zzc:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lcom/google/android/gms/internal/cast/zzg;->zza:Z

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/cast/zzbn;Lcom/google/android/gms/internal/cast/zzaf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzd:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzg;->zze:Lcom/google/android/gms/cast/internal/zzn;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzg;->zzf:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzg;->zzg:Lcom/google/android/gms/internal/cast/zzbn;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzg;->zzh:Lcom/google/android/gms/internal/cast/zzaf;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzl:I

    .line 16
    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzi:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzec;->zza()Lcom/google/android/gms/internal/cast/zzdz;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzk:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/cast/zzbn;Lcom/google/android/gms/internal/cast/zzaf;)Lcom/google/android/gms/internal/cast/zzg;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzg;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/cast/zzbn;Lcom/google/android/gms/internal/cast/zzaf;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final synthetic zzb(Ljava/lang/String;ILandroid/content/SharedPreferences;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzf:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzg:Lcom/google/android/gms/internal/cast/zzbn;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzf:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    const-class v3, Lcom/google/android/gms/cast/framework/CastSession;

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq p2, v2, :cond_0

    .line 15
    .line 16
    if-ne p2, v4, :cond_1

    .line 17
    .line 18
    move p2, v4

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzg;->zzh:Lcom/google/android/gms/internal/cast/zzaf;

    .line 20
    .line 21
    new-instance v5, Lcom/google/android/gms/internal/cast/zzv;

    .line 22
    .line 23
    invoke-direct {v5, p0, v2, p1}, Lcom/google/android/gms/internal/cast/zzv;-><init>(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzaf;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/google/android/gms/internal/cast/zzt;

    .line 27
    .line 28
    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/cast/zzt;-><init>(Lcom/google/android/gms/internal/cast/zzv;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v2, Lcom/google/android/gms/internal/cast/zzu;

    .line 37
    .line 38
    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/cast/zzu;-><init>(Lcom/google/android/gms/internal/cast/zzv;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cast/zzbn;->zzm(Lcom/google/android/gms/cast/framework/SessionTransferCallback;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    const/4 v2, 0x1

    .line 45
    if-eq p2, v2, :cond_2

    .line 46
    .line 47
    if-ne p2, v4, :cond_3

    .line 48
    .line 49
    :cond_2
    iget-object v8, p0, Lcom/google/android/gms/internal/cast/zzg;->zzh:Lcom/google/android/gms/internal/cast/zzaf;

    .line 50
    .line 51
    new-instance v5, Lcom/google/android/gms/internal/cast/zzk;

    .line 52
    .line 53
    move-object v7, p0

    .line 54
    move-object v10, p1

    .line 55
    move-object v6, p3

    .line 56
    move-object v9, p4

    .line 57
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/cast/zzk;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzaf;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/google/android/gms/internal/cast/zzi;

    .line 61
    .line 62
    invoke-direct {p1, v5}, Lcom/google/android/gms/internal/cast/zzi;-><init>(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 66
    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    new-instance p1, Lcom/google/android/gms/internal/cast/zzj;

    .line 71
    .line 72
    invoke-direct {p1, v5}, Lcom/google/android/gms/internal/cast/zzj;-><init>(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzbn;->zzm(Lcom/google/android/gms/cast/framework/SessionTransferCallback;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final zzc(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    const-string v0, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    move v0, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v0, v3

    .line 33
    :goto_0
    const-string v1, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    if-eqz v1, :cond_6

    .line 42
    .line 43
    move v1, v2

    .line 44
    move v0, v3

    .line 45
    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzg;->zzd:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 52
    .line 53
    const-string v5, ".client_cast_analytics_data"

    .line 54
    .line 55
    invoke-static {v4, v5}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const-string v6, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    .line 60
    .line 61
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    const-wide/16 v8, 0x0

    .line 66
    .line 67
    cmp-long v6, v6, v8

    .line 68
    .line 69
    if-nez v6, :cond_3

    .line 70
    .line 71
    move v6, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/4 v6, 0x2

    .line 74
    :goto_1
    iput v6, p0, Lcom/google/android/gms/internal/cast/zzg;->zzl:I

    .line 75
    .line 76
    iget-object v6, p0, Lcom/google/android/gms/internal/cast/zzg;->zzd:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v6}, LS2/H;->initialize(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, LS2/H;->getInstance()LS2/H;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    sget-object v7, LQ2/a;->e:LQ2/a;

    .line 86
    .line 87
    invoke-virtual {v6, v7}, LS2/H;->newFactory(LS2/q;)LP2/f;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const-string v7, "proto"

    .line 92
    .line 93
    invoke-static {v7}, LP2/b;->of(Ljava/lang/String;)LP2/b;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    sget-object v8, Lcom/google/android/gms/internal/cast/zze;->zza:Lcom/google/android/gms/internal/cast/zze;

    .line 98
    .line 99
    check-cast v6, LS2/F;

    .line 100
    .line 101
    const-string v9, "CAST_SENDER_SDK"

    .line 102
    .line 103
    const-class v10, Lcom/google/android/gms/internal/cast/zzno;

    .line 104
    .line 105
    invoke-virtual {v6, v9, v10, v7, v8}, LS2/F;->getTransport(Ljava/lang/String;Ljava/lang/Class;LP2/b;LP2/d;)LP2/e;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    iput-object v6, p0, Lcom/google/android/gms/internal/cast/zzg;->zzb:LP2/e;

    .line 110
    .line 111
    const-string v6, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    .line 112
    .line 113
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_4

    .line 118
    .line 119
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzj:Ljava/lang/Long;

    .line 128
    .line 129
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzd:Landroid/content/Context;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzg;->zze:Lcom/google/android/gms/cast/internal/zzn;

    .line 142
    .line 143
    const-string v6, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR"

    .line 144
    .line 145
    const-string v7, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"

    .line 146
    .line 147
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    new-instance v8, Lcom/google/android/gms/cast/internal/zze;

    .line 156
    .line 157
    invoke-direct {v8, v5, v6}, Lcom/google/android/gms/cast/internal/zze;-><init>(Lcom/google/android/gms/cast/internal/zzn;[Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    .line 165
    .line 166
    sget-object v7, Lcom/google/android/gms/cast/zzax;->c:Lcom/google/android/gms/common/Feature;

    .line 167
    .line 168
    aput-object v7, v2, v3

    .line 169
    .line 170
    invoke-virtual {v6, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const/16 v3, 0x20ea

    .line 179
    .line 180
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v5, v2}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    new-instance v3, Lcom/google/android/gms/internal/cast/zzd;

    .line 193
    .line 194
    invoke-direct {v3, p0, v4, v0, p1}, Lcom/google/android/gms/internal/cast/zzd;-><init>(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 198
    .line 199
    .line 200
    :cond_5
    if-eqz v1, :cond_6

    .line 201
    .line 202
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    invoke-static {p1, p0, v4}, Lcom/google/android/gms/internal/cast/zzo;->zza(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzo;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzo;->zze()V

    .line 210
    .line 211
    .line 212
    sget-object p1, Lcom/google/android/gms/internal/cast/zzml;->zzf:Lcom/google/android/gms/internal/cast/zzml;

    .line 213
    .line 214
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzo;->zzd(Lcom/google/android/gms/internal/cast/zzml;)V

    .line 215
    .line 216
    .line 217
    :cond_6
    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/cast/zzno;I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzno;->zzd(Lcom/google/android/gms/internal/cast/zzno;)Lcom/google/android/gms/internal/cast/zznn;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzi:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/cast/zznn;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznn;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzi:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/cast/zznn;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznn;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzj:Ljava/lang/Long;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    long-to-int v1, v1

    .line 25
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/cast/zznn;->zzi(I)Lcom/google/android/gms/internal/cast/zznn;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/cast/zzno;

    .line 33
    .line 34
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzl:I

    .line 35
    .line 36
    add-int/lit8 v2, v1, -0x1

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    if-eq v2, v0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 47
    .line 48
    invoke-static {p2, p1}, LP2/c;->ofData(ILjava/lang/Object;)LP2/c;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 54
    .line 55
    invoke-static {p2, p1}, LP2/c;->ofTelemetry(ILjava/lang/Object;)LP2/c;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzg;->zzc:Lcom/google/android/gms/cast/internal/Logger;

    .line 60
    .line 61
    new-array p2, v0, [Ljava/lang/Object;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    aput-object v3, p2, v0

    .line 65
    .line 66
    const-string v0, "analytics event: %s"

    .line 67
    .line 68
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzb:LP2/e;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    check-cast p1, LS2/G;

    .line 79
    .line 80
    invoke-virtual {p1, v3}, LS2/G;->send(LP2/c;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void

    .line 84
    :cond_4
    throw v3
.end method

.method public final zze(Lcom/google/android/gms/internal/cast/zzno;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzf;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzf;-><init>(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzno;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzk:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
