.class public final synthetic Lcom/google/android/gms/measurement/internal/zzme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzmf;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzgb;

.field public final synthetic f:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/measurement/internal/zzgb;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzme;->b:Lcom/google/android/gms/measurement/internal/zzmf;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzme;->e:Lcom/google/android/gms/measurement/internal/zzgb;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzme;->f:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzme;->b:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzme;->e:Lcom/google/android/gms/measurement/internal/zzgb;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "AppMeasurementJobService processed last upload request."

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmf;->a:Landroid/content/Context;

    .line 18
    .line 19
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzmj;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzme;->f:Landroid/app/job/JobParameters;

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzmj;->zza(Landroid/app/job/JobParameters;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
