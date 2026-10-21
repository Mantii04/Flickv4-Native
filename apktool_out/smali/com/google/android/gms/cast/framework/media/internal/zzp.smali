.class public final synthetic Lcom/google/android/gms/cast/framework/media/internal/zzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/framework/media/internal/zzv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzp;->b:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzp;->b:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->e(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
