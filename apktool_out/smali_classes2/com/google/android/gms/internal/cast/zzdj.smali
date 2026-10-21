.class public final Lcom/google/android/gms/internal/cast/zzdj;
.super Lcom/google/android/gms/internal/cast/zzdi;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzdl;

.field private final zzb:Lcom/google/android/gms/internal/cast/zzdq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzdl;Lcom/google/android/gms/internal/cast/zzdq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzdj;->zzb:Lcom/google/android/gms/internal/cast/zzdq;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzb(IILandroid/view/Surface;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdn;->zzb()Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v3, "onConnected"

    .line 9
    .line 10
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdj;->zzb:Lcom/google/android/gms/internal/cast/zzdq;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "display"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdn;->zzb()Lcom/google/android/gms/cast/internal/Logger;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-array p2, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    const-string p3, "Unable to get the display manager"

    .line 37
    .line 38
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 42
    .line 43
    new-instance p2, Lcom/google/android/gms/internal/cast/zzdm;

    .line 44
    .line 45
    sget-object p3, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 46
    .line 47
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/cast/zzdm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzdl;->zzc:Lcom/google/android/gms/internal/cast/zzdn;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdn;->zzf(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 59
    .line 60
    .line 61
    if-ge p1, p2, :cond_1

    .line 62
    .line 63
    move v0, p1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v0, p2

    .line 66
    :goto_0
    iget-object v9, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 67
    .line 68
    mul-int/lit16 v0, v0, 0x140

    .line 69
    .line 70
    div-int/lit16 v6, v0, 0x438

    .line 71
    .line 72
    const/4 v8, 0x2

    .line 73
    const-string v3, "private_display"

    .line 74
    .line 75
    move v4, p1

    .line 76
    move v5, p2

    .line 77
    move-object v7, p3

    .line 78
    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p2, v9, Lcom/google/android/gms/internal/cast/zzdl;->zzc:Lcom/google/android/gms/internal/cast/zzdn;

    .line 83
    .line 84
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zze(Lcom/google/android/gms/internal/cast/zzdn;Landroid/hardware/display/VirtualDisplay;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzdl;->zzc:Lcom/google/android/gms/internal/cast/zzdn;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Lcom/google/android/gms/internal/cast/zzdn;)Landroid/hardware/display/VirtualDisplay;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-nez p2, :cond_2

    .line 96
    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdn;->zzb()Lcom/google/android/gms/cast/internal/Logger;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-array p2, v1, [Ljava/lang/Object;

    .line 102
    .line 103
    const-string p3, "Unable to create virtual display"

    .line 104
    .line 105
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 109
    .line 110
    new-instance p2, Lcom/google/android/gms/internal/cast/zzdm;

    .line 111
    .line 112
    sget-object p3, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 113
    .line 114
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/cast/zzdm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Lcom/google/android/gms/internal/cast/zzdn;)Landroid/hardware/display/VirtualDisplay;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-nez p1, :cond_3

    .line 130
    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdn;->zzb()Lcom/google/android/gms/cast/internal/Logger;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-array p2, v1, [Ljava/lang/Object;

    .line 136
    .line 137
    const-string p3, "Virtual display does not have a display"

    .line 138
    .line 139
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 143
    .line 144
    new-instance p2, Lcom/google/android/gms/internal/cast/zzdm;

    .line 145
    .line 146
    sget-object p3, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 147
    .line 148
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/cast/zzdm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdj;->zzb:Lcom/google/android/gms/internal/cast/zzdq;

    .line 156
    .line 157
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 158
    .line 159
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/zzdl;->zzc:Lcom/google/android/gms/internal/cast/zzdn;

    .line 160
    .line 161
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Lcom/google/android/gms/internal/cast/zzdn;)Landroid/hardware/display/VirtualDisplay;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Lcom/google/android/gms/internal/cast/zzdt;

    .line 178
    .line 179
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/cast/zzdt;->zzf(Lcom/google/android/gms/internal/cast/zzds;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdn;->zzb()Lcom/google/android/gms/cast/internal/Logger;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    new-array p2, v1, [Ljava/lang/Object;

    .line 188
    .line 189
    const-string p3, "Unable to provision the route\'s new virtual Display"

    .line 190
    .line 191
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 195
    .line 196
    new-instance p2, Lcom/google/android/gms/internal/cast/zzdm;

    .line 197
    .line 198
    sget-object p3, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 199
    .line 200
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/cast/zzdm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method public final zzc()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdn;->zzb()Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v3, "onConnectedWithDisplay"

    .line 9
    .line 10
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzdl;->zzc:Lcom/google/android/gms/internal/cast/zzdn;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Lcom/google/android/gms/internal/cast/zzdn;)Landroid/hardware/display/VirtualDisplay;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdn;->zzb()Lcom/google/android/gms/cast/internal/Logger;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v2, "There is no virtual display"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 35
    .line 36
    new-instance v1, Lcom/google/android/gms/internal/cast/zzdm;

    .line 37
    .line 38
    sget-object v2, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/zzdm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Lcom/google/android/gms/internal/cast/zzdn;)Landroid/hardware/display/VirtualDisplay;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 58
    .line 59
    new-instance v2, Lcom/google/android/gms/internal/cast/zzdm;

    .line 60
    .line 61
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/cast/zzdm;-><init>(Landroid/view/Display;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdn;->zzb()Lcom/google/android/gms/cast/internal/Logger;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    const-string v2, "Virtual display no longer has a display"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 80
    .line 81
    new-instance v1, Lcom/google/android/gms/internal/cast/zzdm;

    .line 82
    .line 83
    sget-object v2, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 84
    .line 85
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/zzdm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final zzd(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdn;->zzb()Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object p1, v1, v2

    .line 14
    .line 15
    const-string p1, "onError: %d"

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzdl;->zzc:Lcom/google/android/gms/internal/cast/zzdn;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdn;->zzf(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdm;

    .line 28
    .line 29
    sget-object v0, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 30
    .line 31
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/zzdm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdj;->zza:Lcom/google/android/gms/internal/cast/zzdl;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
