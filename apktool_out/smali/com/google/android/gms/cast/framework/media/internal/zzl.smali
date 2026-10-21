.class final Lcom/google/android/gms/cast/framework/media/internal/zzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/internal/zza;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/internal/zzn;

.field public final synthetic b:Lcom/google/android/gms/cast/framework/media/internal/zzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/internal/zzo;Lcom/google/android/gms/cast/framework/media/internal/zzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzl;->b:Lcom/google/android/gms/cast/framework/media/internal/zzo;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzl;->a:Lcom/google/android/gms/cast/framework/media/internal/zzn;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzl;->a:Lcom/google/android/gms/cast/framework/media/internal/zzn;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzn;->b:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzl;->b:Lcom/google/android/gms/cast/framework/media/internal/zzo;

    .line 6
    .line 7
    iput-object v0, p1, Lcom/google/android/gms/cast/framework/media/internal/zzo;->n:Lcom/google/android/gms/cast/framework/media/internal/zzn;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
