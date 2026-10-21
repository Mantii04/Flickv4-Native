.class final Lcom/google/android/gms/measurement/internal/zzkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zziq;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic j:Z

.field public final synthetic m:Lcom/google/android/gms/measurement/internal/zziq;

.field public final synthetic n:Lcom/google/android/gms/measurement/internal/zziy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zziy;Lcom/google/android/gms/measurement/internal/zziq;JJZLcom/google/android/gms/measurement/internal/zziq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkj;->b:Lcom/google/android/gms/measurement/internal/zziq;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzkj;->e:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzkj;->f:J

    .line 9
    .line 10
    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzkj;->j:Z

    .line 11
    .line 12
    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzkj;->m:Lcom/google/android/gms/measurement/internal/zziq;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkj;->n:Lcom/google/android/gms/measurement/internal/zziy;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkj;->n:Lcom/google/android/gms/measurement/internal/zziy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkj;->b:Lcom/google/android/gms/measurement/internal/zziq;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zziy;->e(Lcom/google/android/gms/measurement/internal/zziq;)V

    .line 6
    .line 7
    .line 8
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzkj;->e:J

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zziy;->b(JZ)V

    .line 12
    .line 13
    .line 14
    const/4 v9, 0x1

    .line 15
    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/zzkj;->j:Z

    .line 16
    .line 17
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzkj;->n:Lcom/google/android/gms/measurement/internal/zziy;

    .line 18
    .line 19
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkj;->b:Lcom/google/android/gms/measurement/internal/zziq;

    .line 20
    .line 21
    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzkj;->f:J

    .line 22
    .line 23
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zziy;->f(Lcom/google/android/gms/measurement/internal/zziy;Lcom/google/android/gms/measurement/internal/zziq;JZZ)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqk;->zza()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->r0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkj;->m:Lcom/google/android/gms/measurement/internal/zziq;

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zziy;->g(Lcom/google/android/gms/measurement/internal/zziy;Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zziq;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
