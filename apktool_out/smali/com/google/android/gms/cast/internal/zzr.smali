.class final Lcom/google/android/gms/cast/internal/zzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/internal/zzw;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/internal/zzw;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzr;->b:Lcom/google/android/gms/cast/internal/zzw;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/cast/internal/zzr;->e:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzr;->b:Lcom/google/android/gms/cast/internal/zzw;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zzw;->c:Lcom/google/android/gms/cast/Cast$Listener;

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/cast/internal/zzr;->e:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
