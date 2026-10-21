.class public final Lcom/google/android/gms/measurement/internal/zzgd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzgb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgb;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzgd;->a:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzgd;->b:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzgd;->c:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzgd;->c:Z

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzgd;->b:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 2
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzgd;->b:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzgd;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->a:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 3
    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzgd;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzgd;->c:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzgd;->b:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzgd;->c:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
