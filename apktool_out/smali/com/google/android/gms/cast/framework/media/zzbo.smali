.class final Lcom/google/android/gms/cast/framework/media/zzbo;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/framework/media/zzbp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/zzbp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbo;->b:Lcom/google/android/gms/cast/framework/media/zzbp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzbo;->b:Lcom/google/android/gms/cast/framework/media/zzbp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/zzbp;->a:Ljava/util/HashSet;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/zzbp;->e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->b(Ljava/util/HashSet;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->b:Lcom/google/android/gms/internal/cast/zzed;

    .line 13
    .line 14
    iget-wide v2, v0, Lcom/google/android/gms/cast/framework/media/zzbp;->b:J

    .line 15
    .line 16
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
