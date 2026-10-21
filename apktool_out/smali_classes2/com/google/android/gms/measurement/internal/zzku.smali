.class final Lcom/google/android/gms/measurement/internal/zzku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzks;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzks;

.field public final synthetic j:J

.field public final synthetic m:Lcom/google/android/gms/measurement/internal/zzkv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkv;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzks;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzku;->b:Landroid/os/Bundle;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzku;->e:Lcom/google/android/gms/measurement/internal/zzks;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzku;->f:Lcom/google/android/gms/measurement/internal/zzks;

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzku;->j:J

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzku;->m:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->b:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "screen_name"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "screen_class"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzku;->m:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzq()Lcom/google/android/gms/measurement/internal/zznt;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const-string v5, "screen_view"

    .line 24
    .line 25
    invoke-virtual {v1, v5, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zznt;->f(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzku;->e:Lcom/google/android/gms/measurement/internal/zzks;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzku;->f:Lcom/google/android/gms/measurement/internal/zzks;

    .line 32
    .line 33
    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzku;->j:J

    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzkv;->c(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzks;JZLandroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
