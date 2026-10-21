.class final Lcom/google/android/gms/cast/zzaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/zzaj;->b:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->q:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/zzaj;->b:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
