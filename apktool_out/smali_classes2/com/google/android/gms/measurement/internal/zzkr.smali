.class public final synthetic Lcom/google/android/gms/measurement/internal/zzkr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzko;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Exception;

.field public final synthetic j:[B

.field public final synthetic m:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzko;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkr;->b:Lcom/google/android/gms/measurement/internal/zzko;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzkr;->e:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkr;->j:[B

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzkr;->m:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkr;->b:Lcom/google/android/gms/measurement/internal/zzko;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzko;->e:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzko;->f:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/google/android/gms/measurement/internal/zzkr;->e:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/Exception;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzkr;->j:[B

    .line 12
    .line 13
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkr;->m:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
