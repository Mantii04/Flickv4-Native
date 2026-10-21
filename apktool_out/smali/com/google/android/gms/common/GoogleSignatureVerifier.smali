.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*java.*/com/google/android/gms/common/testing/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field public static c:Lcom/google/android/gms/common/GoogleSignatureVerifier;


# instance fields
.field public final a:Landroid/content/Context;

.field public volatile b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method public static final varargs a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    const-string p0, "GoogleSignatureVerifier"

    .line 12
    .line 13
    const-string p1, "Package has more than one signature."

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/zzk;

    .line 20
    .line 21
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget-object p0, p0, v2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzk;-><init>([B)V

    .line 31
    .line 32
    .line 33
    :goto_0
    array-length p0, p1

    .line 34
    if-ge v2, p0, :cond_3

    .line 35
    .line 36
    aget-object p0, p1, v2

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/zzj;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    aget-object p0, p1, v2

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->c:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/google/android/gms/common/zzn;->a(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->c:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    sget-object p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->c:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 26
    .line 27
    return-object p0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method public static final zzb(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    const-string v2, "com.android.vending"

    .line 8
    .line 9
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "com.google.android.gms"

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    :cond_1
    move p1, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 34
    .line 35
    and-int/lit16 p1, p1, 0x81

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    move p1, v0

    .line 40
    :cond_3
    :goto_0
    move-object v2, p0

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    const/4 v2, 0x0

    .line 43
    :goto_1
    if-eqz p0, :cond_6

    .line 44
    .line 45
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 46
    .line 47
    if-eqz p0, :cond_6

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    sget-object p0, Lcom/google/android/gms/common/zzm;->a:[Lcom/google/android/gms/common/zzj;

    .line 52
    .line 53
    invoke-static {v2, p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    sget-object p0, Lcom/google/android/gms/common/zzm;->a:[Lcom/google/android/gms/common/zzj;

    .line 59
    .line 60
    aget-object p0, p0, v1

    .line 61
    .line 62
    new-array p1, v0, [Lcom/google/android/gms/common/zzj;

    .line 63
    .line 64
    aput-object p0, p1, v1

    .line 65
    .line 66
    invoke-static {v2, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_2
    if-eqz p0, :cond_6

    .line 71
    .line 72
    return v0

    .line 73
    :cond_6
    return v1
.end method


# virtual methods
.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    invoke-static {p1, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    return v2

    .line 28
    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    .line 29
    .line 30
    const-string v1, "Test-keys aren\'t accepted on this build."

    .line 31
    .line 32
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_3
    return v0
.end method

.method public isUidGoogleSigned(I)Z
    .locals 19
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v0, v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move/from16 v3, p1

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v3, :cond_e

    .line 19
    .line 20
    array-length v6, v3

    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    goto/16 :goto_b

    .line 24
    .line 25
    :cond_0
    move-object v0, v4

    .line 26
    move v7, v5

    .line 27
    :goto_0
    if-ge v7, v6, :cond_d

    .line 28
    .line 29
    aget-object v9, v3, v7

    .line 30
    .line 31
    const-string v15, "Failed to get Google certificates from remote"

    .line 32
    .line 33
    const-string v8, "GoogleCertificates"

    .line 34
    .line 35
    const-string v10, "null pkg"

    .line 36
    .line 37
    if-nez v9, :cond_1

    .line 38
    .line 39
    new-instance v0, Lcom/google/android/gms/common/zzx;

    .line 40
    .line 41
    invoke-direct {v0, v5, v10, v4}, Lcom/google/android/gms/common/zzx;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_a

    .line 45
    .line 46
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->b:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_a

    .line 53
    .line 54
    sget-object v0, Lcom/google/android/gms/common/zzn;->a:Lcom/google/android/gms/common/zzf;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/zzn;->c()V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/google/android/gms/common/zzn;->e:Lcom/google/android/gms/common/internal/zzag;

    .line 64
    .line 65
    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzag;->zzi()Z

    .line 66
    .line 67
    .line 68
    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto/16 :goto_9

    .line 72
    .line 73
    :catch_0
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception v0

    .line 76
    :goto_1
    :try_start_1
    invoke-static {v8, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    move v0, v5

    .line 80
    :goto_2
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 81
    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iget-object v0, v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 92
    .line 93
    .line 94
    move-result-object v16

    .line 95
    :try_start_2
    sget-object v0, Lcom/google/android/gms/common/zzn;->g:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    .line 99
    .line 100
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/zzn;->c()V
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    .line 102
    .line 103
    move-object v11, v8

    .line 104
    :try_start_4
    new-instance v8, Lcom/google/android/gms/common/zzo;

    .line 105
    .line 106
    sget-object v0, Lcom/google/android/gms/common/zzn;->g:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    const/4 v14, 0x1

    .line 113
    move-object v13, v11

    .line 114
    const/4 v11, 0x0

    .line 115
    move-object/from16 v17, v13

    .line 116
    .line 117
    const/4 v13, 0x0

    .line 118
    move-object/from16 v18, v17

    .line 119
    .line 120
    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/common/zzo;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    .line 122
    .line 123
    :try_start_5
    sget-object v0, Lcom/google/android/gms/common/zzn;->e:Lcom/google/android/gms/common/internal/zzag;

    .line 124
    .line 125
    invoke-interface {v0, v8}, Lcom/google/android/gms/common/internal/zzag;->zze(Lcom/google/android/gms/common/zzo;)Lcom/google/android/gms/common/zzq;

    .line 126
    .line 127
    .line 128
    move-result-object v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 129
    :try_start_6
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzq;->zzb()Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-eqz v8, :cond_2

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzq;->zzc()I

    .line 136
    .line 137
    .line 138
    new-instance v0, Lcom/google/android/gms/common/zzx;

    .line 139
    .line 140
    invoke-direct {v0, v2, v4, v4}, Lcom/google/android/gms/common/zzx;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    goto :goto_6

    .line 146
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzq;->zza()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzq;->zzd()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    const/4 v11, 0x4

    .line 155
    if-ne v10, v11, :cond_3

    .line 156
    .line 157
    new-instance v10, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 158
    .line 159
    invoke-direct {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_3
    move-object v10, v4

    .line 164
    :goto_3
    const-string v11, "error checking package certificate"

    .line 165
    .line 166
    if-nez v8, :cond_4

    .line 167
    .line 168
    move-object v8, v11

    .line 169
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzq;->zzc()I

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzq;->zzd()I

    .line 173
    .line 174
    .line 175
    new-instance v0, Lcom/google/android/gms/common/zzx;

    .line 176
    .line 177
    invoke-direct {v0, v5, v8, v10}, Lcom/google/android/gms/common/zzx;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :catch_2
    move-exception v0

    .line 182
    move-object/from16 v11, v18

    .line 183
    .line 184
    invoke-static {v11, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .line 186
    .line 187
    const-string v8, "module call"

    .line 188
    .line 189
    new-instance v10, Lcom/google/android/gms/common/zzx;

    .line 190
    .line 191
    invoke-direct {v10, v5, v8, v0}, Lcom/google/android/gms/common/zzx;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 192
    .line 193
    .line 194
    :goto_4
    move-object v0, v10

    .line 195
    goto :goto_5

    .line 196
    :catch_3
    move-exception v0

    .line 197
    move-object v11, v8

    .line 198
    invoke-static {v11, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    const-string v10, "module init: "

    .line 206
    .line 207
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    new-instance v10, Lcom/google/android/gms/common/zzx;

    .line 216
    .line 217
    invoke-direct {v10, v5, v8, v0}, Lcom/google/android/gms/common/zzx;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :goto_5
    invoke-static/range {v16 .. v16}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_8

    .line 225
    .line 226
    :goto_6
    invoke-static/range {v16 .. v16}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :cond_5
    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const/16 v8, 0x40

    .line 237
    .line 238
    invoke-virtual {v0, v9, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 239
    .line 240
    .line 241
    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    .line 242
    iget-object v8, v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Landroid/content/Context;

    .line 243
    .line 244
    invoke-static {v8}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    if-nez v0, :cond_6

    .line 249
    .line 250
    new-instance v0, Lcom/google/android/gms/common/zzx;

    .line 251
    .line 252
    invoke-direct {v0, v5, v10, v4}, Lcom/google/android/gms/common/zzx;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 253
    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_6
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 257
    .line 258
    if-eqz v10, :cond_9

    .line 259
    .line 260
    array-length v10, v10

    .line 261
    if-eq v10, v2, :cond_7

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_7
    new-instance v10, Lcom/google/android/gms/common/zzk;

    .line 265
    .line 266
    iget-object v11, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 267
    .line 268
    aget-object v11, v11, v5

    .line 269
    .line 270
    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/zzk;-><init>([B)V

    .line 275
    .line 276
    .line 277
    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 278
    .line 279
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    :try_start_8
    invoke-static {v11, v10, v8, v5}, Lcom/google/android/gms/common/zzn;->b(Ljava/lang/String;Lcom/google/android/gms/common/zzj;ZZ)Lcom/google/android/gms/common/zzx;

    .line 284
    .line 285
    .line 286
    move-result-object v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 287
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 288
    .line 289
    .line 290
    iget-boolean v12, v8, Lcom/google/android/gms/common/zzx;->a:Z

    .line 291
    .line 292
    if-eqz v12, :cond_8

    .line 293
    .line 294
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 295
    .line 296
    if-eqz v0, :cond_8

    .line 297
    .line 298
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 299
    .line 300
    and-int/lit8 v0, v0, 0x2

    .line 301
    .line 302
    if-eqz v0, :cond_8

    .line 303
    .line 304
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    :try_start_9
    invoke-static {v11, v10, v5, v2}, Lcom/google/android/gms/common/zzn;->b(Ljava/lang/String;Lcom/google/android/gms/common/zzj;ZZ)Lcom/google/android/gms/common/zzx;

    .line 309
    .line 310
    .line 311
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 312
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 313
    .line 314
    .line 315
    iget-boolean v0, v0, Lcom/google/android/gms/common/zzx;->a:Z

    .line 316
    .line 317
    if-eqz v0, :cond_8

    .line 318
    .line 319
    new-instance v0, Lcom/google/android/gms/common/zzx;

    .line 320
    .line 321
    const-string v8, "debuggable release cert app rejected"

    .line 322
    .line 323
    invoke-direct {v0, v5, v8, v4}, Lcom/google/android/gms/common/zzx;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 324
    .line 325
    .line 326
    goto :goto_8

    .line 327
    :catchall_2
    move-exception v0

    .line 328
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 329
    .line 330
    .line 331
    throw v0

    .line 332
    :cond_8
    move-object v0, v8

    .line 333
    goto :goto_8

    .line 334
    :catchall_3
    move-exception v0

    .line 335
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 336
    .line 337
    .line 338
    throw v0

    .line 339
    :cond_9
    :goto_7
    new-instance v0, Lcom/google/android/gms/common/zzx;

    .line 340
    .line 341
    const-string v8, "single cert required"

    .line 342
    .line 343
    invoke-direct {v0, v5, v8, v4}, Lcom/google/android/gms/common/zzx;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 344
    .line 345
    .line 346
    :goto_8
    iget-boolean v8, v0, Lcom/google/android/gms/common/zzx;->a:Z

    .line 347
    .line 348
    if-eqz v8, :cond_b

    .line 349
    .line 350
    iput-object v9, v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->b:Ljava/lang/String;

    .line 351
    .line 352
    goto :goto_a

    .line 353
    :catch_4
    move-exception v0

    .line 354
    const-string v8, "no pkg "

    .line 355
    .line 356
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    new-instance v9, Lcom/google/android/gms/common/zzx;

    .line 361
    .line 362
    invoke-direct {v9, v5, v8, v0}, Lcom/google/android/gms/common/zzx;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 363
    .line 364
    .line 365
    move-object v0, v9

    .line 366
    goto :goto_a

    .line 367
    :goto_9
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :cond_a
    sget-object v0, Lcom/google/android/gms/common/zzx;->d:Lcom/google/android/gms/common/zzx;

    .line 372
    .line 373
    :cond_b
    :goto_a
    iget-boolean v8, v0, Lcom/google/android/gms/common/zzx;->a:Z

    .line 374
    .line 375
    if-eqz v8, :cond_c

    .line 376
    .line 377
    goto :goto_c

    .line 378
    :cond_c
    add-int/2addr v7, v2

    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_d
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_e
    :goto_b
    new-instance v0, Lcom/google/android/gms/common/zzx;

    .line 386
    .line 387
    const-string v2, "no pkgs"

    .line 388
    .line 389
    invoke-direct {v0, v5, v2, v4}, Lcom/google/android/gms/common/zzx;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 390
    .line 391
    .line 392
    :goto_c
    iget-boolean v2, v0, Lcom/google/android/gms/common/zzx;->a:Z

    .line 393
    .line 394
    if-nez v2, :cond_10

    .line 395
    .line 396
    const/4 v2, 0x3

    .line 397
    const-string v3, "GoogleCertificatesRslt"

    .line 398
    .line 399
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_10

    .line 404
    .line 405
    iget-object v2, v0, Lcom/google/android/gms/common/zzx;->c:Ljava/lang/Exception;

    .line 406
    .line 407
    if-eqz v2, :cond_f

    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzx;->a()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    .line 415
    .line 416
    goto :goto_d

    .line 417
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzx;->a()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    :cond_10
    :goto_d
    iget-boolean v0, v0, Lcom/google/android/gms/common/zzx;->a:Z

    .line 425
    .line 426
    return v0
.end method
