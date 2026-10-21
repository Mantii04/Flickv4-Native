.class final Lcom/google/android/gms/cast/framework/media/internal/zzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/internal/zza;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/internal/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzr;->a:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzr;->a:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->c(ILandroid/graphics/Bitmap;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
