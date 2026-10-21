.class public final Lcom/google/android/gms/flags/Singletons;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/flags/Singletons;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/flags/Singletons;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/google/android/gms/flags/Singletons;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/flags/FlagRegistry;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/flags/FlagRegistry;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/flags/zzb;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/flags/zzb;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
