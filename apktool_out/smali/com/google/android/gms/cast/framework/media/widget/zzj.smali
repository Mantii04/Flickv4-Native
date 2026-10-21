.class final Lcom/google/android/gms/cast/framework/media/widget/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/framework/media/widget/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/widget/zzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/zzj;->b:Lcom/google/android/gms/cast/framework/media/widget/zzk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/zzj;->b:Lcom/google/android/gms/cast/framework/media/widget/zzk;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/zzk;->e:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 4
    .line 5
    sget v2, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Y:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zzk;->b:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->g(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
