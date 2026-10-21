.class public Lcom/google/android/gms/cast/RemoteMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingRemoteException"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$OnQueueStatusUpdatedListener;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$OnPreloadStatusUpdatedListener;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/google/android/gms/cast/internal/zzaq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzaq;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/zzaq;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/zzaq;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->a:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->b:Lcom/google/android/gms/cast/internal/zzaq;

    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/cast/zzcy;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/zzcy;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzaq;->zzQ(Lcom/google/android/gms/cast/internal/zzan;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/google/android/gms/cast/zzdm;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/zzdm;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzp;->zzh(Lcom/google/android/gms/cast/internal/zzar;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->b:Lcom/google/android/gms/cast/internal/zzaq;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/cast/internal/zzaq;->zzO(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
