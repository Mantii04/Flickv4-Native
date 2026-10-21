.class final Lcom/google/android/gms/cast/internal/zzal;
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

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzal;->b:Lcom/google/android/gms/cast/internal/zzaq;

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzal;->a:Lcom/google/android/gms/cast/internal/zzas;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;JILjava/lang/Object;JJ)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzal;->b:Lcom/google/android/gms/cast/internal/zzaq;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->g:Ljava/lang/Long;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzal;->a:Lcom/google/android/gms/cast/internal/zzas;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move-object v3, p1

    .line 11
    move-wide v4, p2

    .line 12
    move/from16 v6, p4

    .line 13
    .line 14
    move-object/from16 v7, p5

    .line 15
    .line 16
    move-wide/from16 v8, p6

    .line 17
    .line 18
    move-wide/from16 v10, p8

    .line 19
    .line 20
    invoke-interface/range {v2 .. v11}, Lcom/google/android/gms/cast/internal/zzas;->zza(Ljava/lang/String;JILjava/lang/Object;JJ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzal;->a:Lcom/google/android/gms/cast/internal/zzas;

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
