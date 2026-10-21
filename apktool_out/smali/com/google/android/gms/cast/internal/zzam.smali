.class final Lcom/google/android/gms/cast/internal/zzam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzas;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/internal/zzas;

.field public final synthetic b:Lcom/google/android/gms/cast/internal/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/internal/zzaq;Lcom/google/android/gms/cast/internal/zzas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzam;->b:Lcom/google/android/gms/cast/internal/zzaq;

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzam;->a:Lcom/google/android/gms/cast/internal/zzas;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;JILjava/lang/Object;JJ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzam;->a:Lcom/google/android/gms/cast/internal/zzas;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x7d1

    .line 6
    .line 7
    move/from16 v1, p4

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzam;->b:Lcom/google/android/gms/cast/internal/zzaq;

    .line 12
    .line 13
    iget v2, v1, Lcom/google/android/gms/cast/internal/zzaq;->i:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v2, v3, v4

    .line 24
    .line 25
    iget-object v2, v1, Lcom/google/android/gms/cast/internal/zzp;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 26
    .line 27
    const-string v4, "Possibility of local queue out of sync with receiver queue. Refetching sequence number. Current Local Sequence Number = %d"

    .line 28
    .line 29
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/google/android/gms/cast/internal/zzan;->zzl()V

    .line 35
    .line 36
    .line 37
    move v6, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v6, v1

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzam;->a:Lcom/google/android/gms/cast/internal/zzas;

    .line 41
    .line 42
    move-object v3, p1

    .line 43
    move-wide v4, p2

    .line 44
    move-object/from16 v7, p5

    .line 45
    .line 46
    move-wide/from16 v8, p6

    .line 47
    .line 48
    move-wide/from16 v10, p8

    .line 49
    .line 50
    invoke-interface/range {v2 .. v11}, Lcom/google/android/gms/cast/internal/zzas;->zza(Ljava/lang/String;JILjava/lang/Object;JJ)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzam;->a:Lcom/google/android/gms/cast/internal/zzas;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-wide v4, p4

    .line 8
    move-wide v6, p6

    .line 9
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/cast/internal/zzas;->zzb(Ljava/lang/String;JJJ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
