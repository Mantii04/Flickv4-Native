.class final Lcom/google/android/gms/cast/zzag;
.super Lf1/M;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzag;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 2
    .line 3
    invoke-direct {p0}, Lf1/M;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRouteUnselected(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->q:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/cast/zzag;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 4
    .line 5
    const-string p2, "onRouteUnselected"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p2, "onRouteUnselected, no device was selected"

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
