.class final Lcom/google/android/gms/measurement/internal/zzkz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzkv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkv;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzkz;->b:J

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->e:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->e:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc()Lcom/google/android/gms/measurement/internal/zza;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzkz;->b:J

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zza;->zza(J)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkv;->e:Lcom/google/android/gms/measurement/internal/zzks;

    .line 14
    .line 15
    return-void
.end method
