.class final Lcom/google/android/gms/measurement/internal/zzkx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzks;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzks;

.field public final synthetic f:J

.field public final synthetic j:Z

.field public final synthetic m:Lcom/google/android/gms/measurement/internal/zzkv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzks;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkx;->b:Lcom/google/android/gms/measurement/internal/zzks;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkx;->e:Lcom/google/android/gms/measurement/internal/zzks;

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzkx;->f:J

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzkx;->j:Z

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkx;->m:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkx;->b:Lcom/google/android/gms/measurement/internal/zzks;

    .line 2
    .line 3
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzkx;->f:J

    .line 4
    .line 5
    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzkx;->j:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkx;->m:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkx;->e:Lcom/google/android/gms/measurement/internal/zzks;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkv;->c(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzks;JZLandroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
