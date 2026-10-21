.class public final Lcom/google/android/gms/internal/cast/zzbf;
.super Lcom/google/android/gms/internal/cast/zzal;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzb:Lf1/X;

.field private final zzc:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzd:Ljava/util/Map;

.field private zze:Lcom/google/android/gms/internal/cast/zzbn;

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "MediaRouterProxy"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/cast/zzbf;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf1/X;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/internal/zzn;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzal;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzd:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzc:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 14
    .line 15
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-gt p2, v0, :cond_0

    .line 21
    .line 22
    sget-object p1, Lcom/google/android/gms/internal/cast/zzbf;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 23
    .line 24
    new-array p2, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string p3, "Don\'t need to set MediaRouterParams for Android S v2 or below"

    .line 27
    .line 28
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/cast/zzbf;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 33
    .line 34
    new-array v0, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    const-string v2, "Set up MediaRouterParams based on module flag and CastOptions for Android T or above"

    .line 37
    .line 38
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Lcom/google/android/gms/internal/cast/zzbn;

    .line 42
    .line 43
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/cast/zzbn;-><init>(Lcom/google/android/gms/cast/framework/CastOptions;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbf;->zze:Lcom/google/android/gms/internal/cast/zzbn;

    .line 47
    .line 48
    new-instance p2, Landroid/content/Intent;

    .line 49
    .line 50
    const-class v0, Lf1/m0;

    .line 51
    .line 52
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    xor-int/lit8 p2, p1, 0x1

    .line 75
    .line 76
    iput-boolean p2, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzf:Z

    .line 77
    .line 78
    if-nez p1, :cond_1

    .line 79
    .line 80
    sget-object p1, Lcom/google/android/gms/internal/cast/zzml;->zzJ:Lcom/google/android/gms/internal/cast/zzml;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzo;->zzd(Lcom/google/android/gms/internal/cast/zzml;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    const-string p1, "com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED"

    .line 86
    .line 87
    filled-new-array {p1}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p4, p1}, Lcom/google/android/gms/cast/internal/zzn;->zza([Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance p2, Lcom/google/android/gms/internal/cast/zzbc;

    .line 96
    .line 97
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/cast/zzbc;-><init>(Lcom/google/android/gms/internal/cast/zzbf;Lcom/google/android/gms/cast/framework/CastOptions;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method private final zzt(Lf1/L;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzd:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Set;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lf1/M;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 29
    .line 30
    invoke-virtual {v2, p1, v1, p2}, Lf1/X;->addCallback(Lf1/L;Lf1/M;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    return-void
.end method

.method private final zzu(Lf1/L;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzd:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/Set;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lf1/M;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lf1/X;->removeCallback(Lf1/M;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/X;->getRoutes()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lf1/U;

    .line 22
    .line 23
    invoke-virtual {v1}, Lf1/U;->getId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lf1/U;->getExtras()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/X;->getSelectedRoute()Lf1/U;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lf1/U;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzd(Landroid/os/Bundle;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lf1/L;->fromBundle(Landroid/os/Bundle;)Lf1/L;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzbf;->zzt(Lf1/L;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzed;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/google/android/gms/internal/cast/zzbe;

    .line 32
    .line 33
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzbe;-><init>(Lcom/google/android/gms/internal/cast/zzbf;Lf1/L;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final zze(Landroid/os/Bundle;Lcom/google/android/gms/internal/cast/zzao;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lf1/L;->fromBundle(Landroid/os/Bundle;)Lf1/L;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzd:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzd:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v1, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzd:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/util/Set;

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/cast/zzat;

    .line 35
    .line 36
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/cast/zzat;-><init>(Lcom/google/android/gms/internal/cast/zzao;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final zzf()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzd:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lf1/M;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Lf1/X;->removeCallback(Lf1/M;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzd:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final zzg(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lf1/L;->fromBundle(Landroid/os/Bundle;)Lf1/L;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzbf;->zzu(Lf1/L;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzed;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/google/android/gms/internal/cast/zzbd;

    .line 32
    .line 33
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/cast/zzbd;-><init>(Lcom/google/android/gms/internal/cast/zzbf;Lf1/L;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/X;->getDefaultRoute()Lf1/U;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lf1/X;->selectRoute(Lf1/U;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbf;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const-string v3, "select route with routeId = %s"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 15
    .line 16
    invoke-virtual {v0}, Lf1/X;->getRoutes()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lf1/U;

    .line 35
    .line 36
    invoke-virtual {v1}, Lf1/U;->getId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    sget-object p1, Lcom/google/android/gms/internal/cast/zzbf;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 47
    .line 48
    new-array v0, v2, [Ljava/lang/Object;

    .line 49
    .line 50
    const-string v2, "media route is found and selected"

    .line 51
    .line 52
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lf1/X;->selectRoute(Lf1/U;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final zzj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/X;->unselect(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzk()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/X;->getBluetoothRoute()Lf1/U;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 10
    .line 11
    invoke-virtual {v1}, Lf1/X;->getSelectedRoute()Lf1/U;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lf1/U;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lf1/U;->getId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method public final zzl()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/X;->getDefaultRoute()Lf1/U;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 10
    .line 11
    invoke-virtual {v1}, Lf1/X;->getSelectedRoute()Lf1/U;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lf1/U;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lf1/U;->getId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method public final zzm(Landroid/os/Bundle;I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lf1/L;->fromBundle(Landroid/os/Bundle;)Lf1/L;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lf1/X;->isRouteAvailable(Lf1/L;I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final zzn()Lcom/google/android/gms/internal/cast/zzbn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zze:Lcom/google/android/gms/internal/cast/zzbn;

    return-object v0
.end method

.method public final synthetic zzo(Lf1/L;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzd:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzbf;->zzt(Lf1/L;I)V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method

.method public final synthetic zzp(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/tasks/Task;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Landroid/os/Bundle;

    .line 15
    .line 16
    const-string v1, "com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED"

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    move v4, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v4, v2

    .line 29
    :goto_0
    sget-object v5, Lcom/google/android/gms/internal/cast/zzbf;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 30
    .line 31
    if-eq v3, v4, :cond_1

    .line 32
    .line 33
    const-string v6, "not existed"

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v6, "existed"

    .line 37
    .line 38
    :goto_1
    new-array v7, v3, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v6, v7, v2

    .line 41
    .line 42
    const-string v6, "The module-to-client output switcher flag %s"

    .line 43
    .line 44
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move p2, v3

    .line 55
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/cast/zzbf;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->zzh()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-array v6, v0, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object v4, v6, v2

    .line 72
    .line 73
    aput-object v5, v6, v3

    .line 74
    .line 75
    const-string v4, "Set up output switcher flags: %b (from module), %b (from CastOptions)"

    .line 76
    .line 77
    invoke-virtual {v1, v4, v6}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->zzh()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    move p1, v3

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    move p1, v2

    .line 91
    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 92
    .line 93
    if-eqz p2, :cond_5

    .line 94
    .line 95
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzc:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 96
    .line 97
    if-nez v4, :cond_4

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/CastOptions;->zzf()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/CastOptions;->zze()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    new-instance v6, Lf1/k0;

    .line 109
    .line 110
    invoke-direct {v6}, Lf1/k0;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, p1}, Lf1/k0;->setMediaTransferReceiverEnabled(Z)Lf1/k0;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v6, v5}, Lf1/k0;->setTransferToLocalEnabled(Z)Lf1/k0;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {v6, v4}, Lf1/k0;->setOutputSwitcherEnabled(Z)Lf1/k0;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v6}, Lf1/k0;->build()Lf1/l0;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {p2, v6}, Lf1/X;->setRouterParams(Lf1/l0;)V

    .line 130
    .line 131
    .line 132
    iget-boolean p2, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzf:Z

    .line 133
    .line 134
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const/4 v7, 0x4

    .line 151
    new-array v7, v7, [Ljava/lang/Object;

    .line 152
    .line 153
    aput-object p2, v7, v2

    .line 154
    .line 155
    aput-object p1, v7, v3

    .line 156
    .line 157
    aput-object v6, v7, v0

    .line 158
    .line 159
    const/4 p1, 0x3

    .line 160
    aput-object v4, v7, p1

    .line 161
    .line 162
    const-string p1, "media transfer = %b, session transfer = %b, transfer to local = %b, in-app output switcher = %b"

    .line 163
    .line 164
    invoke-virtual {v1, p1, v7}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    if-eqz v5, :cond_5

    .line 168
    .line 169
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 170
    .line 171
    new-instance p2, Lcom/google/android/gms/internal/cast/zzbb;

    .line 172
    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zze:Lcom/google/android/gms/internal/cast/zzbn;

    .line 174
    .line 175
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lcom/google/android/gms/internal/cast/zzbn;

    .line 180
    .line 181
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/cast/zzbb;-><init>(Lcom/google/android/gms/internal/cast/zzbn;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lf1/X;->setOnPrepareTransferListener(Lf1/P;)V

    .line 185
    .line 186
    .line 187
    sget-object p1, Lcom/google/android/gms/internal/cast/zzml;->zzK:Lcom/google/android/gms/internal/cast/zzml;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzo;->zzd(Lcom/google/android/gms/internal/cast/zzml;)V

    .line 190
    .line 191
    .line 192
    :cond_5
    :goto_4
    return-void
.end method

.method public final synthetic zzq(Lf1/L;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzbf;->zzu(Lf1/L;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzr(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzb:Lf1/X;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/X;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzf:Z

    return v0
.end method
