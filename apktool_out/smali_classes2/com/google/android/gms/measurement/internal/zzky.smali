.class final Lcom/google/android/gms/measurement/internal/zzky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzks;

.field public final synthetic e:J

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzkv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzks;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzky;->b:Lcom/google/android/gms/measurement/internal/zzks;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzky;->e:J

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzky;->f:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzky;->f:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzky;->b:Lcom/google/android/gms/measurement/internal/zzks;

    .line 5
    .line 6
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzky;->e:J

    .line 7
    .line 8
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkv;->d(Lcom/google/android/gms/measurement/internal/zzks;ZJ)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkv;->e:Lcom/google/android/gms/measurement/internal/zzks;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzo()Lcom/google/android/gms/measurement/internal/zzla;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzla;->zza(Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
