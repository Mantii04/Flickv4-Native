.class final Lcom/google/android/gms/measurement/internal/zzjq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic j:Landroid/os/Bundle;

.field public final synthetic m:Z

.field public final synthetic n:Z

.field public final synthetic p:Z

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Lcom/google/android/gms/measurement/internal/zziy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zziy;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->e:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzjq;->f:J

    .line 9
    .line 10
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzjq;->j:Landroid/os/Bundle;

    .line 11
    .line 12
    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzjq;->m:Z

    .line 13
    .line 14
    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/zzjq;->n:Z

    .line 15
    .line 16
    iput-boolean p9, p0, Lcom/google/android/gms/measurement/internal/zzjq;->p:Z

    .line 17
    .line 18
    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/zzjq;->q:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->r:Lcom/google/android/gms/measurement/internal/zziy;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzjq;->p:Z

    .line 2
    .line 3
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzjq;->q:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->r:Lcom/google/android/gms/measurement/internal/zziy;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->f:J

    .line 12
    .line 13
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjq;->j:Landroid/os/Bundle;

    .line 14
    .line 15
    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzjq;->m:Z

    .line 16
    .line 17
    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zzjq;->n:Z

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zziy;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
