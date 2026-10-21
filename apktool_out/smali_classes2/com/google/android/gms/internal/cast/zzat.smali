.class public final Lcom/google/android/gms/internal/cast/zzat;
.super Lf1/M;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/cast/zzao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "MediaRouterCallback"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzao;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf1/M;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/cast/zzao;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onRouteAdded(Lf1/X;Lf1/U;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 2
    .line 3
    invoke-virtual {p2}, Lf1/U;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lf1/U;->getExtras()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzao;->zzf(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v1, "onRouteAdded"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    const-string v1, "zzao"

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    const-string v1, "Unable to call %s on %s."

    .line 32
    .line 33
    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onRouteChanged(Lf1/X;Lf1/U;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 2
    .line 3
    invoke-virtual {p2}, Lf1/U;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lf1/U;->getExtras()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzao;->zzg(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v1, "onRouteChanged"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    const-string v1, "zzao"

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    const-string v1, "Unable to call %s on %s."

    .line 32
    .line 33
    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onRouteRemoved(Lf1/X;Lf1/U;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 2
    .line 3
    invoke-virtual {p2}, Lf1/U;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lf1/U;->getExtras()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzao;->zzh(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v1, "onRouteRemoved"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    const-string v1, "zzao"

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    const-string v1, "Unable to call %s on %s."

    .line 32
    .line 33
    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onRouteSelected(Lf1/X;Lf1/U;I)V
    .locals 8

    .line 1
    const-string v0, "-groupRoute"

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p2}, Lf1/U;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x2

    .line 14
    new-array v4, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object p3, v4, v5

    .line 18
    .line 19
    const/4 p3, 0x1

    .line 20
    aput-object v2, v4, p3

    .line 21
    .line 22
    const-string v2, "onRouteSelected with reason = %d, routeId = %s"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lf1/U;->getPlaybackType()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eq v1, p3, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lf1/U;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p2}, Lf1/U;->getId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p2}, Lf1/U;->getExtras()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p1}, Lf1/X;->getRoutes()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Lf1/U;

    .line 85
    .line 86
    invoke-virtual {v6}, Lf1/U;->getId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    if-eqz v7, :cond_3

    .line 91
    .line 92
    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-nez v7, :cond_3

    .line 97
    .line 98
    invoke-virtual {v6}, Lf1/U;->getExtras()Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-static {v7}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    if-eqz v7, :cond_3

    .line 107
    .line 108
    invoke-virtual {v7}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_3

    .line 117
    .line 118
    sget-object p1, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 119
    .line 120
    const-string v0, "routeId is changed from %s to %s"

    .line 121
    .line 122
    invoke-virtual {v6}, Lf1/U;->getId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    new-array v7, v3, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v2, v7, v5

    .line 129
    .line 130
    aput-object v4, v7, p3

    .line 131
    .line 132
    invoke-virtual {p1, v0, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Lf1/U;->getId()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    goto :goto_0

    .line 140
    :catch_0
    move-exception p1

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 143
    .line 144
    invoke-interface {p1}, Lcom/google/android/gms/internal/cast/zzao;->zze()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    const v0, 0xd230980

    .line 149
    .line 150
    .line 151
    if-lt p1, v0, :cond_5

    .line 152
    .line 153
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 154
    .line 155
    invoke-virtual {p2}, Lf1/U;->getExtras()Landroid/os/Bundle;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-interface {p1, v2, v1, p2}, Lcom/google/android/gms/internal/cast/zzao;->zzj(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 164
    .line 165
    invoke-virtual {p2}, Lf1/U;->getExtras()Landroid/os/Bundle;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-interface {p1, v2, p2}, Lcom/google/android/gms/internal/cast/zzao;->zzi(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 174
    .line 175
    new-array v0, v3, [Ljava/lang/Object;

    .line 176
    .line 177
    const-string v1, "onRouteSelected"

    .line 178
    .line 179
    aput-object v1, v0, v5

    .line 180
    .line 181
    const-string v1, "zzao"

    .line 182
    .line 183
    aput-object v1, v0, p3

    .line 184
    .line 185
    const-string p3, "Unable to call %s on %s."

    .line 186
    .line 187
    invoke-virtual {p2, p1, p3, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public final onRouteUnselected(Lf1/X;Lf1/U;I)V
    .locals 5

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lf1/U;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v3, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v0, v3, v4

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v1, v3, v0

    .line 19
    .line 20
    const-string v1, "onRouteUnselected with reason = %d, routeId = %s"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lf1/U;->getPlaybackType()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eq v1, v0, :cond_0

    .line 30
    .line 31
    new-array p2, v4, [Ljava/lang/Object;

    .line 32
    .line 33
    const-string p3, "skip route unselection for non-cast route"

    .line 34
    .line 35
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 40
    .line 41
    invoke-virtual {p2}, Lf1/U;->getId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p2}, Lf1/U;->getExtras()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p1, v1, p2, p3}, Lcom/google/android/gms/internal/cast/zzao;->zzk(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    move-exception p1

    .line 54
    sget-object p2, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 55
    .line 56
    new-array p3, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    const-string v1, "onRouteUnselected"

    .line 59
    .line 60
    aput-object v1, p3, v4

    .line 61
    .line 62
    const-string v1, "zzao"

    .line 63
    .line 64
    aput-object v1, p3, v0

    .line 65
    .line 66
    const-string v0, "Unable to call %s on %s."

    .line 67
    .line 68
    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
