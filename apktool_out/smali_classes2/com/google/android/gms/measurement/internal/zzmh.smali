.class public final synthetic Lcom/google/android/gms/measurement/internal/zzmh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzmf;

.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzgb;

.field public final synthetic j:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzmf;ILcom/google/android/gms/measurement/internal/zzgb;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmh;->b:Lcom/google/android/gms/measurement/internal/zzmf;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzmh;->e:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmh;->f:Lcom/google/android/gms/measurement/internal/zzgb;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzmh;->j:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmh;->b:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzmf;->a:Landroid/content/Context;

    .line 4
    .line 5
    check-cast v1, Lcom/google/android/gms/measurement/internal/zzmj;

    .line 6
    .line 7
    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzmh;->e:I

    .line 8
    .line 9
    invoke-interface {v1, v2}, Lcom/google/android/gms/measurement/internal/zzmj;->zza(I)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmh;->f:Lcom/google/android/gms/measurement/internal/zzgb;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v4, "Local AppMeasurementService processed last upload request. StartId"

    .line 26
    .line 27
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmf;->a()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "Completed wakeful intent."

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmh;->j:Landroid/content/Intent;

    .line 44
    .line 45
    invoke-interface {v1, v0}, Lcom/google/android/gms/measurement/internal/zzmj;->zza(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
